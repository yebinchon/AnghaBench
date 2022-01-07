
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpioleds_softc {size_t sc_total_leds; int * sc_leds; int sc_busdev; int sc_dev; } ;
struct gpioled {int dummy; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int OF_child (int) ;
 int OF_hasprop (int,char*) ;
 int OF_peer (int) ;
 int device_get_parent (int ) ;
 struct gpioleds_softc* device_get_softc (int ) ;
 int gpioleds_attach_led (struct gpioleds_softc*,int,int *) ;
 int * malloc (int,int ,int) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
gpioled_attach(device_t dev)
{
 struct gpioleds_softc *sc;
 phandle_t child, leds;
 int total_leds;

 if ((leds = ofw_bus_get_node(dev)) == -1)
  return (ENXIO);

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_busdev = device_get_parent(dev);


 total_leds = 0;
 for (child = OF_child(leds); child != 0; child = OF_peer(child)) {
  if (!OF_hasprop(child, "gpios"))
   continue;
  total_leds++;
 }

 if (total_leds) {
  sc->sc_leds = malloc(sizeof(struct gpioled) * total_leds,
      M_DEVBUF, M_WAITOK | M_ZERO);

  sc->sc_total_leds = 0;

  for (child = OF_child(leds); child != 0; child = OF_peer(child)) {
   if (!OF_hasprop(child, "gpios"))
    continue;
   gpioleds_attach_led(sc, child, &sc->sc_leds[sc->sc_total_leds]);
   sc->sc_total_leds++;
  }
 }

 return (0);
}
