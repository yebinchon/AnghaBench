
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;



 scalar_t__ PCIC_MULTIMEDIA ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_class (int ) ;
 int pci_get_devid (int ) ;

__attribute__((used)) static int
agg_probe(device_t dev)
{
 char *s = ((void*)0);

 switch (pci_get_devid(dev)) {
 case 130:
  s = "ESS Technology Maestro-1";
  break;

 case 128:
  s = "ESS Technology Maestro-2";
  break;

 case 129:
  s = "ESS Technology Maestro-2E";
  break;
 }

 if (s != ((void*)0) && pci_get_class(dev) == PCIC_MULTIMEDIA) {
  device_set_desc(dev, s);
  return BUS_PROBE_DEFAULT;
 }
 return ENXIO;
}
