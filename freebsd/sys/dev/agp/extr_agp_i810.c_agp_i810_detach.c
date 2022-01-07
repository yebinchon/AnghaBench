
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct agp_i810_softc {int sc_res; TYPE_2__* match; int gatt; int initial_aperture; } ;
typedef int device_t ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int res_spec; int (* chipset_flush_teardown ) (int ) ;int (* deinstall_gatt ) (int ) ;} ;


 int AGP_SET_APERTURE (int ,int ) ;
 int M_AGP ;
 int agp_free_cdev (int ) ;
 int agp_free_res (int ) ;
 int bus_release_resources (int ,int ,int ) ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int free (int ,int ) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static int
agp_i810_detach(device_t dev)
{
 struct agp_i810_softc *sc;

 sc = device_get_softc(dev);
 agp_free_cdev(dev);


 sc->match->driver->deinstall_gatt(dev);

 sc->match->driver->chipset_flush_teardown(dev);


 AGP_SET_APERTURE(dev, sc->initial_aperture);

 free(sc->gatt, M_AGP);
 bus_release_resources(dev, sc->match->driver->res_spec, sc->sc_res);
 agp_free_res(dev);

 return (0);
}
