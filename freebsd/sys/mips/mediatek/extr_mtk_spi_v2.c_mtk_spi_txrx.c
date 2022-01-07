
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mtk_spi_softc {int dummy; } ;


 int MTK_SPIDATA ;
 int MTK_SPIMOREBUF ;
 int MTK_SPIOPCODE ;
 int MTK_SPITRANS ;
 int MTK_SPI_READ ;
 int MTK_SPI_WRITE ;
 int SPISTART ;
 int SPI_READ (struct mtk_spi_softc*,int ) ;
 int SPI_SET_BITS (struct mtk_spi_softc*,int ,int ) ;
 int SPI_WRITE (struct mtk_spi_softc*,int ,int) ;
 scalar_t__ mtk_spi_wait (struct mtk_spi_softc*) ;

__attribute__((used)) static uint8_t
mtk_spi_txrx(struct mtk_spi_softc *sc, uint8_t *data, int write)
{

 if (mtk_spi_wait(sc))
  return (0xff);

 if (write == MTK_SPI_WRITE) {
  SPI_WRITE(sc, MTK_SPIOPCODE, (*data));
  SPI_WRITE(sc, MTK_SPIMOREBUF, (8<<24));
 } else {
  SPI_WRITE(sc, MTK_SPIMOREBUF, (8<<12));
 }

 SPI_SET_BITS(sc, MTK_SPITRANS, SPISTART);

 if (mtk_spi_wait(sc))
  return (0xff);

 if (write == MTK_SPI_READ) {
  *data = SPI_READ(sc, MTK_SPIDATA) & 0xff;
 }

 return (0);
}
