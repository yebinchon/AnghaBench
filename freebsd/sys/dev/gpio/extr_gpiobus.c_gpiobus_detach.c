
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiobus_softc {int sc_npins; struct gpiobus_ivar* sc_pins; int sc_intr_rman; int sc_mtx; } ;
struct gpiobus_ivar {struct gpiobus_ivar* name; int rl; } ;
typedef struct gpiobus_ivar device_t ;


 struct gpiobus_ivar* GPIOBUS_IVAR (struct gpiobus_ivar) ;
 int GPIOBUS_LOCK_DESTROY (struct gpiobus_softc*) ;
 struct gpiobus_softc* GPIOBUS_SOFTC (struct gpiobus_ivar) ;
 int KASSERT (int ,char*) ;
 int M_DEVBUF ;
 int M_TEMP ;
 int bus_generic_detach (struct gpiobus_ivar) ;
 int device_delete_child (struct gpiobus_ivar,struct gpiobus_ivar) ;
 int device_get_children (struct gpiobus_ivar,struct gpiobus_ivar**,int*) ;
 int free (struct gpiobus_ivar*,int ) ;
 int gpiobus_free_ivars (struct gpiobus_ivar*) ;
 int mtx_initialized (int *) ;
 int resource_list_free (int *) ;
 int rman_fini (int *) ;

__attribute__((used)) static int
gpiobus_detach(device_t dev)
{
 struct gpiobus_softc *sc;
 struct gpiobus_ivar *devi;
 device_t *devlist;
 int i, err, ndevs;

 sc = GPIOBUS_SOFTC(dev);
 KASSERT(mtx_initialized(&sc->sc_mtx),
     ("gpiobus mutex not initialized"));
 GPIOBUS_LOCK_DESTROY(sc);

 if ((err = bus_generic_detach(dev)) != 0)
  return (err);

 if ((err = device_get_children(dev, &devlist, &ndevs)) != 0)
  return (err);
 for (i = 0; i < ndevs; i++) {
  devi = GPIOBUS_IVAR(devlist[i]);
  gpiobus_free_ivars(devi);
  resource_list_free(&devi->rl);
  free(devi, M_DEVBUF);
  device_delete_child(dev, devlist[i]);
 }
 free(devlist, M_TEMP);
 rman_fini(&sc->sc_intr_rman);
 if (sc->sc_pins) {
  for (i = 0; i < sc->sc_npins; i++) {
   if (sc->sc_pins[i].name != ((void*)0))
    free(sc->sc_pins[i].name, M_DEVBUF);
   sc->sc_pins[i].name = ((void*)0);
  }
  free(sc->sc_pins, M_DEVBUF);
  sc->sc_pins = ((void*)0);
 }

 return (0);
}
