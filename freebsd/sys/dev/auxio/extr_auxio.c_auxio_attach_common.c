
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct auxio_softc {int sc_nauxio; int* sc_rid; int sc_led_stat; int sc_led_dev; int * sc_regh; int * sc_regt; struct resource** sc_res; int sc_dev; } ;


 int AUXIO_LED_LED ;
 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int auxio_free_resource (struct auxio_softc*) ;
 int auxio_led_func (struct auxio_softc*,int) ;
 int auxio_led_read (struct auxio_softc*) ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int device_printf (int ,char*) ;
 int led_create (int (*) (struct auxio_softc*,int),struct auxio_softc*,char*) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;

__attribute__((used)) static int
auxio_attach_common(struct auxio_softc *sc)
{
 struct resource *res;
 int i;

 for (i = 0; i < sc->sc_nauxio; i++) {
  sc->sc_rid[i] = i;
  res = bus_alloc_resource_any(sc->sc_dev, SYS_RES_MEMORY,
      &sc->sc_rid[i], RF_ACTIVE);
  if (res == ((void*)0)) {
   device_printf(sc->sc_dev,
       "could not allocate resources\n");
   goto attach_fail;
  }
  sc->sc_res[i] = res;
  sc->sc_regt[i] = rman_get_bustag(res);
  sc->sc_regh[i] = rman_get_bushandle(res);
 }

 sc->sc_led_stat = auxio_led_read(sc) & AUXIO_LED_LED;
 sc->sc_led_dev = led_create(auxio_led_func, sc, "auxioled");

 auxio_led_func(sc, 1);

 return (0);

attach_fail:
 auxio_free_resource(sc);

 return (ENXIO);
}
