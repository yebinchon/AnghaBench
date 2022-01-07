
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_spi_softc {int dummy; } ;


 int MTK_SPITRANS ;
 int SPIBUSY ;
 int SPI_READ (struct mtk_spi_softc*,int ) ;

__attribute__((used)) static int
mtk_spi_wait(struct mtk_spi_softc *sc)
{
 int i = 1000;

 while (i--) {
  if (!(SPI_READ(sc, MTK_SPITRANS) & SPIBUSY))
   break;
 }
 if (i == 0) {
  return (1);
 }

 return (0);
}
