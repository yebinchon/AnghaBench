
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct spibus_ivar {scalar_t__ mode; int cs; } ;
struct spi_command {int tx_cmd_sz; int rx_cmd_sz; int tx_data_sz; int rx_data_sz; scalar_t__ rx_data; scalar_t__ tx_data; scalar_t__ rx_cmd; scalar_t__ tx_cmd; } ;
struct gpio_spi_softc {int sc_sclk; int sc_dev; int sc_busdev; } ;
typedef int device_t ;


 int GPIOBUS_PIN_SET (int ,int ,int ,int) ;
 int KASSERT (int,char*) ;
 struct spibus_ivar* SPIBUS_IVAR (int ) ;
 scalar_t__ SPIBUS_MODE_CPHA ;
 scalar_t__ SPIBUS_MODE_CPOL ;
 struct gpio_spi_softc* device_get_softc (int ) ;
 int gpio_spi_chip_activate (struct gpio_spi_softc*,int ) ;
 int gpio_spi_chip_deactivate (struct gpio_spi_softc*,int ) ;
 int gpio_spi_txrx (struct gpio_spi_softc*,int ,scalar_t__,int ) ;

__attribute__((used)) static int
gpio_spi_transfer(device_t dev, device_t child, struct spi_command *cmd)
{
 struct gpio_spi_softc *sc;
 uint8_t *buf_in, *buf_out;
 struct spibus_ivar *devi = SPIBUS_IVAR(child);
 int i;

 sc = device_get_softc(dev);

 KASSERT(cmd->tx_cmd_sz == cmd->rx_cmd_sz,
     ("TX/RX command sizes should be equal"));
 KASSERT(cmd->tx_data_sz == cmd->rx_data_sz,
     ("TX/RX data sizes should be equal"));

 gpio_spi_chip_activate(sc, devi->cs);


 if ((devi->mode == SPIBUS_MODE_CPOL) ||
     (devi->mode == SPIBUS_MODE_CPHA)) {
  GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
      sc->sc_sclk, 1);
 } else {
  GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
      sc->sc_sclk, 0);
 }




 buf_out = (uint8_t *)cmd->tx_cmd;
 buf_in = (uint8_t *)cmd->rx_cmd;

 for (i = 0; i < cmd->tx_cmd_sz; i++)
  buf_in[i] = gpio_spi_txrx(sc, devi->cs, devi->mode, buf_out[i]);




 buf_out = (uint8_t *)cmd->tx_data;
 buf_in = (uint8_t *)cmd->rx_data;
 for (i = 0; i < cmd->tx_data_sz; i++)
  buf_in[i] = gpio_spi_txrx(sc, devi->cs, devi->mode, buf_out[i]);


 if ((devi->mode == SPIBUS_MODE_CPOL) ||
     (devi->mode == SPIBUS_MODE_CPHA)) {
  GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
      sc->sc_sclk, 1);
 } else {
  GPIOBUS_PIN_SET(sc->sc_busdev, sc->sc_dev,
      sc->sc_sclk, 0);
 }

 gpio_spi_chip_deactivate(sc, devi->cs);

 return (0);
}
