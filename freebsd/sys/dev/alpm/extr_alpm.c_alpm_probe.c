
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ ACER_M1543_PMU_ID ;
 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_devid (int ) ;

__attribute__((used)) static int
alpm_probe(device_t dev)
{

 if (pci_get_devid(dev) == ACER_M1543_PMU_ID) {
  device_set_desc(dev, "AcerLabs M15x3 Power Management Unit");

  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
