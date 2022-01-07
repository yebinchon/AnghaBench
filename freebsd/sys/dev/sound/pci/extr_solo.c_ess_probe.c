
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int pci_get_devid (int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;

__attribute__((used)) static int
ess_probe(device_t dev)
{
 char *s = ((void*)0);
 u_int32_t subdev;

 subdev = (pci_get_subdevice(dev) << 16) | pci_get_subvendor(dev);
 switch (pci_get_devid(dev)) {
 case 0x1969125d:
  if (subdev == 0x8888125d)
   s = "ESS Solo-1E";
  else if (subdev == 0x1818125d)
   s = "ESS Solo-1";
  else
   s = "ESS Solo-1 (unknown vendor)";
  break;
 }

 if (s)
  device_set_desc(dev, s);
 return s ? BUS_PROBE_DEFAULT : ENXIO;
}
