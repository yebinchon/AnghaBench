
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_spi_softc {TYPE_1__* gpio_cs; } ;
struct TYPE_2__ {int pin; int dev; } ;


 int CS_HIGH ;
 int GPIO_PIN_SET (int ,int ,int) ;
 int HIZSMOSI ;
 int MTK_SPICTL ;
 int SPI_SET_BITS (struct mtk_spi_softc*,int ,int) ;
 int mtk_spi_wait (struct mtk_spi_softc*) ;

__attribute__((used)) static void
mtk_spi_chip_deactivate(struct mtk_spi_softc *sc)
{
        mtk_spi_wait(sc);



 if (sc->gpio_cs != ((void*)0)) {
  GPIO_PIN_SET(sc->gpio_cs->dev, sc->gpio_cs->pin, 1);
  SPI_SET_BITS(sc, MTK_SPICTL, HIZSMOSI);
 } else {
  SPI_SET_BITS(sc, MTK_SPICTL, CS_HIGH | HIZSMOSI);
 }
}
