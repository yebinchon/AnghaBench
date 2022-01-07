
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_spi_softc {int sc_freq; } ;


 int DELAY (int) ;

__attribute__((used)) static void
gpio_delay(struct gpio_spi_softc *sc)
{
 int d;

 d = sc->sc_freq / 1000000;
 if (d == 0)
  d = 1;

 DELAY(d);
}
