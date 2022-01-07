
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
cmi_probe(device_t dev)
{
 switch(pci_get_devid(dev)) {
 case 131:
  device_set_desc(dev, "CMedia CMI8338A");
  return BUS_PROBE_DEFAULT;
 case 130:
  device_set_desc(dev, "CMedia CMI8338B");
  return BUS_PROBE_DEFAULT;
 case 128:
  device_set_desc(dev, "CMedia CMI8738");
  return BUS_PROBE_DEFAULT;
 case 129:
  device_set_desc(dev, "CMedia CMI8738B");
  return BUS_PROBE_DEFAULT;
 case 132:
         device_set_desc(dev, "CMedia CMI120");
         return BUS_PROBE_DEFAULT;
 default:
  return ENXIO;
 }
}
