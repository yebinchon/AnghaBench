
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_spi_softc {int dummy; } ;


 int MTK_SPIBUSY ;
 int SPI_READ (struct mtk_spi_softc*,int ) ;
 int printf (char*) ;

__attribute__((used)) static int
mtk_spi_wait(struct mtk_spi_softc *sc)
{
 int i = 1000;

 while (i--) {
  if (!SPI_READ(sc, MTK_SPIBUSY))
   break;
 }
 if (i == 0) {
  printf("busy\n");
  return (1);
 }

 return (0);
}
