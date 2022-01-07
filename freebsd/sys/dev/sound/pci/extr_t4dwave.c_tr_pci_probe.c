
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
tr_pci_probe(device_t dev)
{
 switch (pci_get_devid(dev)) {
  case 130:
   device_set_desc(dev, "SiS 7018");
   return BUS_PROBE_DEFAULT;
  case 131:
   device_set_desc(dev, "Acer Labs M5451");
   return BUS_PROBE_DEFAULT;
  case 129:
   device_set_desc(dev, "Trident 4DWave DX");
   return BUS_PROBE_DEFAULT;
  case 128:
   device_set_desc(dev, "Trident 4DWave NX");
   return BUS_PROBE_DEFAULT;
 }

 return ENXIO;
}
