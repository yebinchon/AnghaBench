
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct agp_i810_softc {int bdev; } ;
typedef int device_t ;




 int AGP_G4x_GCC1_SIZE_MASK ;



 int AGP_I810_PGTBL_SIZE_1MB ;
 int AGP_I810_PGTBL_SIZE_1_5MB ;
 int AGP_I810_PGTBL_SIZE_2MB ;
 int AGP_I830_GCC1 ;
 int ENXIO ;
 int agp_gen5_adjust_pgtbl_size (int ,int ) ;
 int agp_i965_get_gtt_total_entries (int ) ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static int
agp_gen5_get_gtt_total_entries(device_t dev)
{
 struct agp_i810_softc *sc;
 uint16_t gcc1;

 sc = device_get_softc(dev);

 gcc1 = pci_read_config(sc->bdev, AGP_I830_GCC1, 2);
 switch (gcc1 & AGP_G4x_GCC1_SIZE_MASK) {
 case 132:
 case 130:
  agp_gen5_adjust_pgtbl_size(dev, AGP_I810_PGTBL_SIZE_1MB);
  break;
 case 129:
  agp_gen5_adjust_pgtbl_size(dev, AGP_I810_PGTBL_SIZE_1_5MB);
  break;
 case 131:
 case 128:
  agp_gen5_adjust_pgtbl_size(dev, AGP_I810_PGTBL_SIZE_2MB);
  break;
 default:
  device_printf(dev, "Unknown page table size\n");
  return (ENXIO);
 }

 return (agp_i965_get_gtt_total_entries(dev));
}
