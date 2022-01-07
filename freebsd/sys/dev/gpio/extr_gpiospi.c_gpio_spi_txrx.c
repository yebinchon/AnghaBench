
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct gpio_spi_softc {int sc_miso; int sc_sclk; int sc_dev; int sc_busdev; int sc_mosi; } ;


 int GPIOBUS_PIN_GET (int ,int ,int,unsigned int*) ;
 int GPIOBUS_PIN_SET (int ,int ,int ,int) ;
 int SPIBUS_MODE_CPHA ;
 int SPIBUS_MODE_CPOL ;
 int gpio_delay (struct gpio_spi_softc*) ;

__attribute__((used)) static uint8_t
gpio_spi_txrx(struct gpio_spi_softc *sc, int cs, int mode, uint8_t data)
{
 uint32_t mask, out = 0;
 unsigned int bit;




 for (mask = 0x80; mask > 0; mask >>= 1) {
  if ((mode == SPIBUS_MODE_CPOL) ||
      (mode == SPIBUS_MODE_CPHA)) {



   GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
       sc->sc_mosi, (data & mask)?1:0);
   GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
       sc->sc_sclk, 0);
   gpio_delay(sc);

   if (sc->sc_miso != 0xff) {
    GPIOBUS_PIN_GET(sc->sc_busdev, sc->sc_dev,
        sc->sc_miso, &bit);
    out |= bit?mask:0;
   }

   gpio_delay(sc);
   GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
       sc->sc_sclk, 1);
   gpio_delay(sc);
  } else {



   GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
       sc->sc_mosi, (data & mask)?1:0);
   GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
       sc->sc_sclk, 1);
   gpio_delay(sc);

   if (sc->sc_miso != 0xff) {
    GPIOBUS_PIN_GET(sc->sc_busdev, sc->sc_dev,
        sc->sc_miso, &bit);
    out |= bit?mask:0;
   }

   gpio_delay(sc);
   GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
       sc->sc_sclk, 0);
   gpio_delay(sc);
  }
 }

 return (out & 0xff);
}
