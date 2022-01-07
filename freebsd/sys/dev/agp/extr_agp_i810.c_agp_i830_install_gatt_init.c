
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct agp_i810_softc {TYPE_1__* gatt; int * sc_res; } ;
struct TYPE_2__ {int ag_physical; } ;


 int AGP_I810_PGTBL_CTL ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;

__attribute__((used)) static void
agp_i830_install_gatt_init(struct agp_i810_softc *sc)
{
 uint32_t pgtblctl;





 pgtblctl = bus_read_4(sc->sc_res[0], AGP_I810_PGTBL_CTL);
 pgtblctl |= 1;
 bus_write_4(sc->sc_res[0], AGP_I810_PGTBL_CTL, pgtblctl);

 sc->gatt->ag_physical = pgtblctl & ~1;
}
