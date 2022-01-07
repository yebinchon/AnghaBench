
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_LOW_PRIORITY ;



 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int pci_get_devid (int ) ;
 int pci_get_revid (int ) ;

__attribute__((used)) static int
emu_pci_probe(device_t dev)
{
 char *s = ((void*)0);

 switch (pci_get_devid(dev)) {
 case 130:
  s = "Creative EMU10K1";
  break;

 case 129:
  if (pci_get_revid(dev) == 0x04)
   s = "Creative Audigy 2 (EMU10K2)";
  else
   s = "Creative Audigy (EMU10K2)";
  break;

 case 128:
  s = "Creative Audigy 2 (EMU10K3)";
  break;

 default:
  return ENXIO;
 }

 device_set_desc(dev, s);
 return BUS_PROBE_LOW_PRIORITY;
}
