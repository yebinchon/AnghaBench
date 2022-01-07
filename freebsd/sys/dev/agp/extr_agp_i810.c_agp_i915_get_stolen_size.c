
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct agp_i810_softc {unsigned int stolen_size; unsigned int stolen; TYPE_2__* match; int bdev; int * sc_res; } ;
typedef int device_t ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int chiptype; int gen; } ;




 unsigned int AGP_G33_MGGC_GGMS_MASK ;






 int AGP_I810_PGTBL_CTL ;



 int AGP_I810_PGTBL_SIZE_MASK ;
 int AGP_I855_GCC1 ;
 unsigned int AGP_I855_GCC1_GMS ;
 int EINVAL ;
 int bus_read_4 (int ,int ) ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 unsigned int pci_read_config (int ,int ,int) ;

__attribute__((used)) static int
agp_i915_get_stolen_size(device_t dev)
{
 struct agp_i810_softc *sc;
 unsigned int gcc1, stolen, gtt_size;

 sc = device_get_softc(dev);






 switch (sc->match->driver->chiptype) {
 case 131:
  gtt_size = 128;
  break;
 case 130:
  gtt_size = 256;
  break;
 case 129:
  switch (bus_read_4(sc->sc_res[0], AGP_I810_PGTBL_CTL) &
   AGP_I810_PGTBL_SIZE_MASK) {
  case 146:
   gtt_size = 128;
   break;
  case 145:
   gtt_size = 256;
   break;
  case 144:
   gtt_size = 512;
   break;
  case 136:
   gtt_size = 1024;
   break;
  case 134:
   gtt_size = 2048;
   break;
  case 135:
   gtt_size = 1024 + 512;
   break;
  default:
   device_printf(dev, "Bad PGTBL size\n");
   return (EINVAL);
  }
  break;
 case 133:
  gcc1 = pci_read_config(sc->bdev, AGP_I855_GCC1, 2);
  switch (gcc1 & AGP_G33_MGGC_GGMS_MASK) {
  case 152:
   gtt_size = 1024;
   break;
  case 151:
   gtt_size = 2048;
   break;
  default:
   device_printf(dev, "Bad PGTBL size\n");
   return (EINVAL);
  }
  break;
 case 128:
 case 132:
  gtt_size = 0;
  break;
 default:
  device_printf(dev, "Bad chiptype\n");
  return (EINVAL);
 }


 gcc1 = pci_read_config(sc->bdev, AGP_I855_GCC1, 1);
 switch (gcc1 & AGP_I855_GCC1_GMS) {
 case 142:
  stolen = 1024;
  break;
 case 140:
  stolen = 4 * 1024;
  break;
 case 139:
  stolen = 8 * 1024;
  break;
 case 143:
  stolen = 16 * 1024;
  break;
 case 141:
  stolen = 32 * 1024;
  break;
 case 138:
  stolen = sc->match->driver->gen > 2 ? 48 * 1024 : 0;
  break;
 case 137:
  stolen = sc->match->driver->gen > 2 ? 64 * 1024 : 0;
  break;
 case 154:
  stolen = sc->match->driver->gen > 2 ? 128 * 1024 : 0;
  break;
 case 153:
  stolen = sc->match->driver->gen > 2 ? 256 * 1024 : 0;
  break;
 case 147:
  if (sc->match->driver->chiptype == 129 ||
      sc->match->driver->chiptype == 132)
   stolen = 96 * 1024;
  else
   stolen = 0;
  break;
 case 150:
  if (sc->match->driver->chiptype == 129 ||
      sc->match->driver->chiptype == 132)
   stolen = 160 * 1024;
  else
   stolen = 0;
  break;
 case 149:
  if (sc->match->driver->chiptype == 129 ||
      sc->match->driver->chiptype == 132)
   stolen = 224 * 1024;
  else
   stolen = 0;
  break;
 case 148:
  if (sc->match->driver->chiptype == 129 ||
      sc->match->driver->chiptype == 132)
   stolen = 352 * 1024;
  else
   stolen = 0;
  break;
 default:
  device_printf(dev,
      "unknown memory configuration, disabling (GCC1 %x)\n",
      gcc1);
  return (EINVAL);
 }

 gtt_size += 4;
 sc->stolen_size = stolen * 1024;
 sc->stolen = (stolen - gtt_size) * 1024 / 4096;

 return (0);
}
