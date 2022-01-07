
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpioleds_softc {int sc_total_leds; int * sc_leds; } ;
typedef int device_t ;


 int M_DEVBUF ;
 struct gpioleds_softc* device_get_softc (int ) ;
 int free (int *,int ) ;
 int gpioleds_detach_led (int *) ;

__attribute__((used)) static int
gpioled_detach(device_t dev)
{
 struct gpioleds_softc *sc;
 int i;

 sc = device_get_softc(dev);

 for (i = 0; i < sc->sc_total_leds; i++)
  gpioleds_detach_led(&sc->sc_leds[i]);

 if (sc->sc_leds)
  free(sc->sc_leds, M_DEVBUF);

 return (0);
}
