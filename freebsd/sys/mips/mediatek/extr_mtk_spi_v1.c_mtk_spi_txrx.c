
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mtk_spi_softc {int dummy; } ;


 int EBUSY ;
 int MTK_SPICTL ;
 int MTK_SPIDATA ;
 int MTK_SPI_WRITE ;
 int SPI_READ (struct mtk_spi_softc*,int ) ;
 int SPI_SET_BITS (struct mtk_spi_softc*,int ,int ) ;
 int SPI_WRITE (struct mtk_spi_softc*,int ,int) ;
 int START_READ ;
 int START_WRITE ;
 scalar_t__ mtk_spi_wait (struct mtk_spi_softc*) ;

__attribute__((used)) static uint8_t
mtk_spi_txrx(struct mtk_spi_softc *sc, uint8_t *data, int write)
{

 if (mtk_spi_wait(sc))
  return (EBUSY);

 if (write == MTK_SPI_WRITE) {
  SPI_WRITE(sc, MTK_SPIDATA, *data);
  SPI_SET_BITS(sc, MTK_SPICTL, START_WRITE);
 } else {
  SPI_SET_BITS(sc, MTK_SPICTL, START_READ);
  if (mtk_spi_wait(sc))
   return (EBUSY);

  *data = SPI_READ(sc, MTK_SPIDATA) & 0xff;
 }
 return (0);
}
