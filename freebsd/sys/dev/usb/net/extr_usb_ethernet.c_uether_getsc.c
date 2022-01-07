
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {void* ue_sc; } ;



void *
uether_getsc(struct usb_ether *ue)
{
 return (ue->ue_sc);
}
