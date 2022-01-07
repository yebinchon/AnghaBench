
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct agp_i810_softc {int * sc_res; } ;
typedef int device_t ;


 int AGP_I810_PGTBL_CTL ;
 int AGP_I810_PGTBL_ENABLED ;
 int AGP_I810_PGTBL_SIZE_MASK ;
 int AGP_I965_PGTBL_CTL2 ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int ) ;
 struct agp_i810_softc* device_get_softc (int ) ;

__attribute__((used)) static void
agp_gen5_adjust_pgtbl_size(device_t dev, uint32_t sz)
{
 struct agp_i810_softc *sc;
 uint32_t pgetbl_ctl, pgetbl_ctl2;

 sc = device_get_softc(dev);


 pgetbl_ctl2 = bus_read_4(sc->sc_res[0], AGP_I965_PGTBL_CTL2);
 pgetbl_ctl2 &= ~AGP_I810_PGTBL_ENABLED;
 bus_write_4(sc->sc_res[0], AGP_I965_PGTBL_CTL2, pgetbl_ctl2);


 pgetbl_ctl = bus_read_4(sc->sc_res[0], AGP_I810_PGTBL_CTL);
 pgetbl_ctl &= ~AGP_I810_PGTBL_SIZE_MASK;
 pgetbl_ctl |= sz;
 bus_write_4(sc->sc_res[0], AGP_I810_PGTBL_CTL, pgetbl_ctl);
}
