
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int pci_get_devid (int ) ;
 int pci_get_revid (int ) ;

__attribute__((used)) static int
via_probe(device_t dev)
{
 switch(pci_get_devid(dev)) {
 case 135:
  switch(pci_get_revid(dev)) {
  case 131:
   device_set_desc(dev, "VIA VT8233 (pre)");
   return (BUS_PROBE_DEFAULT);
  case 132:
   device_set_desc(dev, "VIA VT8233C");
   return (BUS_PROBE_DEFAULT);
  case 134:
   device_set_desc(dev, "VIA VT8233");
   return (BUS_PROBE_DEFAULT);
  case 133:
   device_set_desc(dev, "VIA VT8233A");
   return (BUS_PROBE_DEFAULT);
  case 130:
   device_set_desc(dev, "VIA VT8235");
   return (BUS_PROBE_DEFAULT);
  case 129:
   device_set_desc(dev, "VIA VT8237");
   return (BUS_PROBE_DEFAULT);
  case 128:
   device_set_desc(dev, "VIA VT8251");
   return (BUS_PROBE_DEFAULT);
  default:
   device_set_desc(dev, "VIA VT8233X");
   return (BUS_PROBE_DEFAULT);
  }
 }
 return (ENXIO);
}
