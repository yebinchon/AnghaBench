
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
ntb_plx_probe(device_t dev)
{

 switch (pci_get_devid(dev)) {
 case 0x87a010b5:
  device_set_desc(dev, "PLX Non-Transparent Bridge NT0 Link");
  return (BUS_PROBE_DEFAULT);
 case 0x87a110b5:
  device_set_desc(dev, "PLX Non-Transparent Bridge NT1 Link");
  return (BUS_PROBE_DEFAULT);
 case 0x87b010b5:
  device_set_desc(dev, "PLX Non-Transparent Bridge NT0 Virtual");
  return (BUS_PROBE_DEFAULT);
 case 0x87b110b5:
  device_set_desc(dev, "PLX Non-Transparent Bridge NT1 Virtual");
  return (BUS_PROBE_DEFAULT);
 }
 return (ENXIO);
}
