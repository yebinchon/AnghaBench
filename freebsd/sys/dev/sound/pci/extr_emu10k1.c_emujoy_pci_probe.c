
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_quiet (int ) ;
 int device_set_desc (int ,char*) ;
 int pci_get_devid (int ) ;

__attribute__((used)) static int
emujoy_pci_probe(device_t dev)
{
 char *s = ((void*)0);

 switch (pci_get_devid(dev)) {
 case 0x70021102:
  s = "Creative EMU10K1 Joystick";
  device_quiet(dev);
  break;
 case 0x70031102:
  s = "Creative EMU10K2 Joystick";
  device_quiet(dev);
  break;
 }

 if (s) device_set_desc(dev, s);
 return s ? -1000 : ENXIO;
}
