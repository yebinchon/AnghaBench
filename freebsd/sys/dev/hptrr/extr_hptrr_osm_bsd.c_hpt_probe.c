
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ HIM ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int KdPrint (char*) ;
 int device_set_desc (int ,int ) ;
 TYPE_1__* hpt_match (int ) ;
 int pci_get_bus (int ) ;
 int pci_get_function (int ) ;
 int pci_get_irq (int ) ;
 int pci_get_slot (int ) ;

__attribute__((used)) static int hpt_probe(device_t dev)
{
 HIM *him;

 him = hpt_match(dev);
 if (him != ((void*)0)) {
  KdPrint(("hpt_probe: adapter at PCI %d:%d:%d, IRQ %d",
   pci_get_bus(dev), pci_get_slot(dev), pci_get_function(dev), pci_get_irq(dev)
       ));
  device_set_desc(dev, him->name);
  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
