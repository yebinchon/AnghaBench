
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_interface {int alt_index; } ;



uint8_t
usbd_get_interface_altindex(struct usb_interface *iface)
{
 return (iface->alt_index);
}
