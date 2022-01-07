
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;


 size_t USB_QUIRK_MAX ;
 char const** usb_quirk_str ;

__attribute__((used)) static const char *
usb_quirkstr(uint16_t quirk)
{
 return ((quirk < USB_QUIRK_MAX && usb_quirk_str[quirk] != ((void*)0)) ?
     usb_quirk_str[quirk] : "UQ_UNKNOWN");
}
