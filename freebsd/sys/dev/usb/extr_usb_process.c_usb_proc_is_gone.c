
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_process {int * up_mtx; scalar_t__ up_gone; } ;


 int MA_OWNED ;
 int USB_MTX_ASSERT (int *,int ) ;

uint8_t
usb_proc_is_gone(struct usb_process *up)
{
 if (up->up_gone)
  return (1);





 if (up->up_mtx != ((void*)0))
  USB_MTX_ASSERT(up->up_mtx, MA_OWNED);
 return (0);
}
