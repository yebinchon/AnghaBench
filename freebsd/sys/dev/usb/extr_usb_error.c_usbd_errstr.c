
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t usb_error_t ;


 size_t USB_ERR_MAX ;
 char const** usb_errstr_table ;

const char *
usbd_errstr(usb_error_t err)
{
 return (err < USB_ERR_MAX ? usb_errstr_table[err] : "USB_ERR_UNKNOWN");
}
