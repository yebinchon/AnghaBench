
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct card_type {scalar_t__ devid; } ;
typedef int device_t ;


 struct card_type* cards ;
 scalar_t__ pci_get_devid (int ) ;

__attribute__((used)) static struct card_type *
csa_findcard(device_t dev)
{
 int i;

 i = 0;
 while (cards[i].devid != 0) {
  if (pci_get_devid(dev) == cards[i].devid)
   return &cards[i];
  i++;
 }
 return ((void*)0);
}
