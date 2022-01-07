
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_3__ {scalar_t__ chip_id; int name; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ PCIC_DISPLAY ;
 scalar_t__ PCIS_DISPLAY_VGA ;
 int device_set_desc (int ,int ) ;
 TYPE_1__* machfb_info ;
 int nitems (TYPE_1__*) ;
 scalar_t__ pci_get_class (int ) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_subclass (int ) ;

__attribute__((used)) static int
machfb_pci_probe(device_t dev)
{
 int i;

 if (pci_get_class(dev) != PCIC_DISPLAY ||
     pci_get_subclass(dev) != PCIS_DISPLAY_VGA)
  return (ENXIO);

 for (i = 0; i < nitems(machfb_info); i++) {
  if (pci_get_device(dev) == machfb_info[i].chip_id) {
   device_set_desc(dev, machfb_info[i].name);
   return (BUS_PROBE_DEFAULT);
  }
 }

 return (ENXIO);
}
