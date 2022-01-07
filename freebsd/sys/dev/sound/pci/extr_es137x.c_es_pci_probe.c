
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;






 int ENXIO ;
 int device_printf (int ,char*,int ) ;
 int device_set_desc (int ,char*) ;
 int pci_get_devid (int ) ;
 int pci_get_revid (int ) ;

__attribute__((used)) static int
es_pci_probe(device_t dev)
{
 switch(pci_get_devid(dev)) {
 case 136:
  device_set_desc(dev, "AudioPCI ES1370");
  return (BUS_PROBE_DEFAULT);
 case 129:
  switch(pci_get_revid(dev)) {
  case 134:
   device_set_desc(dev, "AudioPCI ES1371-A");
   return (BUS_PROBE_DEFAULT);
  case 133:
   device_set_desc(dev, "AudioPCI ES1371-B");
   return (BUS_PROBE_DEFAULT);
  case 131:
   device_set_desc(dev, "AudioPCI ES1373-A");
   return (BUS_PROBE_DEFAULT);
  case 130:
   device_set_desc(dev, "AudioPCI ES1373-B");
   return (BUS_PROBE_DEFAULT);
  case 132:
   device_set_desc(dev, "AudioPCI ES1373-8");
   return (BUS_PROBE_DEFAULT);
  case 135:
   device_set_desc(dev, "Creative CT5880-A");
   return (BUS_PROBE_DEFAULT);
  default:
   device_set_desc(dev, "AudioPCI ES1371-?");
   device_printf(dev,
       "unknown revision %d -- please report to "
       "freebsd-multimedia@freebsd.org\n",
       pci_get_revid(dev));
   return (BUS_PROBE_DEFAULT);
  }
 case 128:
  device_set_desc(dev, "Strange AudioPCI ES1371-? (vid=3274)");
  device_printf(dev,
      "unknown revision %d -- please report to "
      "freebsd-multimedia@freebsd.org\n", pci_get_revid(dev));
  return (BUS_PROBE_DEFAULT);
 case 141:
  switch(pci_get_revid(dev)) {
  case 142:
   device_set_desc(dev,
       "Creative SB AudioPCI CT4730/EV1938");
   return (BUS_PROBE_DEFAULT);
  default:
   device_set_desc(dev, "Creative SB AudioPCI CT4730-?");
   device_printf(dev,
       "unknown revision %d -- please report to "
       "freebsd-multimedia@freebsd.org\n",
       pci_get_revid(dev));
   return (BUS_PROBE_DEFAULT);
  }
 case 137:
  switch(pci_get_revid(dev)) {
  case 140:
   device_set_desc(dev, "Creative CT5880-C");
   return (BUS_PROBE_DEFAULT);
  case 139:
   device_set_desc(dev, "Creative CT5880-D");
   return (BUS_PROBE_DEFAULT);
  case 138:
   device_set_desc(dev, "Creative CT5880-E");
   return (BUS_PROBE_DEFAULT);
  default:
   device_set_desc(dev, "Creative CT5880-?");
   device_printf(dev,
       "unknown revision %d -- please report to "
       "freebsd-multimedia@freebsd.org\n",
       pci_get_revid(dev));
   return (BUS_PROBE_DEFAULT);
  }
 default:
  return (ENXIO);
 }
}
