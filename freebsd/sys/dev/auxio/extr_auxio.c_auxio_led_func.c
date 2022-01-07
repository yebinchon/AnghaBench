
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct auxio_softc {int dummy; } ;


 int AUXIO_LED_LED ;
 int AUXIO_LOCK (struct auxio_softc*) ;
 int AUXIO_UNLOCK (struct auxio_softc*) ;
 int auxio_led_read (struct auxio_softc*) ;
 int auxio_led_write (struct auxio_softc*,int ) ;

__attribute__((used)) static void
auxio_led_func(void *arg, int onoff)
{
 struct auxio_softc *sc;
 u_int32_t led;

 sc = (struct auxio_softc *)arg;

 AUXIO_LOCK(sc);



 led = auxio_led_read(sc);
 if (onoff)
  led |= AUXIO_LED_LED;
 else
  led &= ~AUXIO_LED_LED;
 auxio_led_write(sc, led);
 AUXIO_UNLOCK(sc);
}
