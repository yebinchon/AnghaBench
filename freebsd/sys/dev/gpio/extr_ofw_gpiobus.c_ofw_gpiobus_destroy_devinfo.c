
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpiobus_ivar {int npins; size_t* pins; int rl; } ;
struct ofw_gpiobus_devinfo {int opd_obdinfo; struct gpiobus_ivar opd_dinfo; } ;
struct gpiobus_softc {size_t sc_npins; TYPE_1__* sc_pins; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ mapped; } ;


 int M_DEVBUF ;
 struct gpiobus_softc* device_get_softc (int ) ;
 int free (struct ofw_gpiobus_devinfo*,int ) ;
 int gpiobus_free_ivars (struct gpiobus_ivar*) ;
 int ofw_bus_gen_destroy_devinfo (int *) ;
 int resource_list_free (int *) ;

__attribute__((used)) static void
ofw_gpiobus_destroy_devinfo(device_t bus, struct ofw_gpiobus_devinfo *dinfo)
{
 int i;
 struct gpiobus_ivar *devi;
 struct gpiobus_softc *sc;

 sc = device_get_softc(bus);
 devi = &dinfo->opd_dinfo;
 for (i = 0; i < devi->npins; i++) {
  if (devi->pins[i] > sc->sc_npins)
   continue;
  sc->sc_pins[devi->pins[i]].mapped = 0;
 }
 gpiobus_free_ivars(devi);
 resource_list_free(&dinfo->opd_dinfo.rl);
 ofw_bus_gen_destroy_devinfo(&dinfo->opd_obdinfo);
 free(dinfo, M_DEVBUF);
}
