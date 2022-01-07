
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int pci_get_devid (int ) ;

__attribute__((used)) static int
xenpci_probe(device_t dev)
{

 if (pci_get_devid(dev) != 0x00015853)
  return (ENXIO);

 device_set_desc(dev, "Xen Platform Device");
 return (BUS_PROBE_DEFAULT);
}
