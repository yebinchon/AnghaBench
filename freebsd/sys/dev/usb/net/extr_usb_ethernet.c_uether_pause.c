
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_ether {int ue_mtx; int ue_tq; } ;


 int usb_pause_mtx (int ,unsigned int) ;
 scalar_t__ usb_proc_is_gone (int *) ;

uint8_t
uether_pause(struct usb_ether *ue, unsigned int _ticks)
{
 if (usb_proc_is_gone(&ue->ue_tq)) {

  return (1);
 }
 usb_pause_mtx(ue->ue_mtx, _ticks);
 return (0);
}
