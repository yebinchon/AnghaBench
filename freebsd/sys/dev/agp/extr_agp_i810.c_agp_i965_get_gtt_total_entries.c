
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct agp_i810_softc {int gtt_total_entries; int * sc_res; } ;
typedef int device_t ;


 int AGP_I810_PGTBL_CTL ;






 int AGP_I810_PGTBL_SIZE_MASK ;
 int ENXIO ;
 int bus_read_4 (int ,int ) ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
agp_i965_get_gtt_total_entries(device_t dev)
{
 struct agp_i810_softc *sc;
 uint32_t pgetbl_ctl;
 int error;

 sc = device_get_softc(dev);
 error = 0;
 pgetbl_ctl = bus_read_4(sc->sc_res[0], AGP_I810_PGTBL_CTL);
 switch (pgetbl_ctl & AGP_I810_PGTBL_SIZE_MASK) {
 case 133:
  sc->gtt_total_entries = 128 * 1024 / 4;
  break;
 case 130:
  sc->gtt_total_entries = 256 * 1024 / 4;
  break;
 case 128:
  sc->gtt_total_entries = 512 * 1024 / 4;
  break;

 case 132:
  sc->gtt_total_entries = 1024 * 1024 / 4;
  break;
 case 129:
  sc->gtt_total_entries = 2 * 1024 * 1024 / 4;
  break;
 case 131:
  sc->gtt_total_entries = (1024 + 512) * 1024 / 4;
  break;
 default:
  device_printf(dev, "Unknown page table size\n");
  error = ENXIO;
 }
 return (error);
}
