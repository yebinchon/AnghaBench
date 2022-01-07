
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
sv_probe(device_t dev)
{
 switch(pci_get_devid(dev)) {
 case 128:
  device_set_desc(dev, "S3 Sonicvibes");
  return BUS_PROBE_DEFAULT;
 default:
  return ENXIO;
 }
}
