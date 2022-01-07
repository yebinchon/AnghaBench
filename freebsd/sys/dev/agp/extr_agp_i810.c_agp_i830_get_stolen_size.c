
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_i810_softc {int stolen; int stolen_size; int bdev; } ;
typedef int device_t ;


 int AGP_I830_GCC1 ;
 unsigned int AGP_I830_GCC1_GMS ;



 int EINVAL ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,unsigned int) ;
 unsigned int pci_read_config (int ,int ,int) ;

__attribute__((used)) static int
agp_i830_get_stolen_size(device_t dev)
{
 struct agp_i810_softc *sc;
 unsigned int gcc1;

 sc = device_get_softc(dev);

 gcc1 = pci_read_config(sc->bdev, AGP_I830_GCC1, 1);
 switch (gcc1 & AGP_I830_GCC1_GMS) {
 case 129:
  sc->stolen = (512 - 132) * 1024 / 4096;
  sc->stolen_size = 512 * 1024;
  break;
 case 130:
  sc->stolen = (1024 - 132) * 1024 / 4096;
  sc->stolen_size = 1024 * 1024;
  break;
 case 128:
  sc->stolen = (8192 - 132) * 1024 / 4096;
  sc->stolen_size = 8192 * 1024;
  break;
 default:
  sc->stolen = 0;
  device_printf(dev,
      "unknown memory configuration, disabling (GCC1 %x)\n",
      gcc1);
  return (EINVAL);
 }
 return (0);
}
