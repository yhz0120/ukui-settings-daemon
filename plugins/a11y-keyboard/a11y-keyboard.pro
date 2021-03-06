QT += gui core widgets x11extras
TARGET = a11y-keyboard
TEMPLATE = lib
DEFINES += A11YKEYBOARD_LIBRARY

CONFIG += c++11 no_keywords link_pkgconfig plugin
CONFIG += app_bunale

DEFINES += QT_DEPRECATED_WARNINGS

include($$PWD/../../common/common.pri)

PKGCONFIG += \
        gtk+-3.0 \
        glib-2.0  \
        gsettings-qt


INCLUDEPATH += \
        -I $$PWD/../../common       \
        -I $$PWD/../common          \
        -I $$PWD/../../         \
        -I ukui-settings-daemon/

SOURCES += \
    a11y-keyboard-manager.cpp \
    a11y-keyboard-plugin.cpp \
    a11y-preferences-dialog.cpp

HEADERS += \
    a11y-keyboard-manager.h \
    a11y-keyboard_global.h \
    a11y-keyboard-plugin.h \
    a11y-preferences-dialog.h

DESTDIR = $$PWD/

a11y_keyboard_lib.path = /usr/local/lib/ukui-settings-daemon/
a11y_keyboard_lib.files = $$PWD/liba11ykeyboard.so

INSTALLS += a11y_keyboard_lib

FORMS += \
    a11y-preferences-dialog.ui
