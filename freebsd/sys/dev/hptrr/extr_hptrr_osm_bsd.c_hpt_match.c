
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_7__ {scalar_t__ (* get_supported_device_id ) (int,TYPE_1__*) ;struct TYPE_7__* next; } ;
struct TYPE_6__ {int vid; scalar_t__ did; } ;
typedef TYPE_1__ PCI_ID ;
typedef TYPE_2__ HIM ;


 int attach_generic ;
 TYPE_2__* him_list ;
 scalar_t__ pci_get_device (int ) ;
 int pci_get_vendor (int ) ;
 scalar_t__ stub1 (int,TYPE_1__*) ;

__attribute__((used)) static HIM *hpt_match(device_t dev)
{
 PCI_ID pci_id;
 int i;
 HIM *him;


 if (pci_get_vendor(dev) != 0x1103 && !attach_generic)
  return (((void*)0));
 for (him = him_list; him; him = him->next) {
  for (i=0; him->get_supported_device_id(i, &pci_id); i++) {
   if ((pci_get_vendor(dev) == pci_id.vid) &&
    (pci_get_device(dev) == pci_id.did)){
    return (him);
   }
  }
 }
 return (((void*)0));
}
