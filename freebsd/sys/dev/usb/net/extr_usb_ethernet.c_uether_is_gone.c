
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_ether {int ue_tq; } ;


 int usb_proc_is_gone (int *) ;

uint8_t
uether_is_gone(struct usb_ether *ue)
{
 return (usb_proc_is_gone(&ue->ue_tq));
}
