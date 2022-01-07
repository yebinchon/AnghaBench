
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int device; } ;


 void* usbd_find_descriptor (int ,int *,int ,int ,int,int ,int) ;

__attribute__((used)) static void *
umodem_get_desc(struct usb_attach_arg *uaa, uint8_t type, uint8_t subtype)
{
 return (usbd_find_descriptor(uaa->device, ((void*)0), uaa->info.bIfaceIndex,
     type, 0xFF, subtype, 0xFF));
}
