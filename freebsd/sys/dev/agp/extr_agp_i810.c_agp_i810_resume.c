
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_i810_softc {TYPE_1__* gatt; int * sc_res; int initial_aperture; } ;
typedef int device_t ;
struct TYPE_2__ {int ag_physical; } ;


 int AGP_I810_PGTBL_CTL ;
 int AGP_SET_APERTURE (int ,int ) ;
 int bus_generic_resume (int ) ;
 int bus_write_4 (int ,int ,int) ;
 struct agp_i810_softc* device_get_softc (int ) ;

__attribute__((used)) static int
agp_i810_resume(device_t dev)
{
 struct agp_i810_softc *sc;
 sc = device_get_softc(dev);

 AGP_SET_APERTURE(dev, sc->initial_aperture);


 bus_write_4(sc->sc_res[0], AGP_I810_PGTBL_CTL,
 sc->gatt->ag_physical | 1);

 return (bus_generic_resume(dev));
}
