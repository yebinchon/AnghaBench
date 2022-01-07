
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_i810_softc {int * sc_res; } ;
typedef int device_t ;


 int AGP_I810_PGTBL_CTL ;
 unsigned int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,unsigned int) ;
 struct agp_i810_softc* device_get_softc (int ) ;

__attribute__((used)) static void
agp_i830_deinstall_gatt(device_t dev)
{
 struct agp_i810_softc *sc;
 unsigned int pgtblctl;

 sc = device_get_softc(dev);
 pgtblctl = bus_read_4(sc->sc_res[0], AGP_I810_PGTBL_CTL);
 pgtblctl &= ~1;
 bus_write_4(sc->sc_res[0], AGP_I810_PGTBL_CTL, pgtblctl);
}
