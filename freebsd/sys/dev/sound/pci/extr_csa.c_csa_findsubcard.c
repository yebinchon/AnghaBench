
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csa_card {scalar_t__ subvendor; scalar_t__ subdevice; } ;
struct card_type {struct csa_card* cards; } ;
typedef int device_t ;


 struct card_type* csa_findcard (int ) ;
 struct csa_card nocard ;
 scalar_t__ pci_get_subdevice (int ) ;
 scalar_t__ pci_get_subvendor (int ) ;

struct csa_card *
csa_findsubcard(device_t dev)
{
 int i;
 struct card_type *card;
 struct csa_card *subcard;

 card = csa_findcard(dev);
 if (card == ((void*)0))
  return &nocard;
 subcard = card->cards;
 i = 0;
 while (subcard[i].subvendor != 0) {
  if (pci_get_subvendor(dev) == subcard[i].subvendor
      && pci_get_subdevice(dev) == subcard[i].subdevice) {
   return &subcard[i];
  }
  i++;
 }
 return &subcard[i];
}
