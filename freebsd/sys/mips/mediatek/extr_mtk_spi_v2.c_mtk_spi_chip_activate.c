
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_spi_softc {int dummy; } ;


 int MTK_SPIPOLAR ;
 int SPI_SET_BITS (struct mtk_spi_softc*,int ,int) ;
 int mtk_spi_wait (struct mtk_spi_softc*) ;

__attribute__((used)) static void
mtk_spi_chip_activate(struct mtk_spi_softc *sc)
{
        mtk_spi_wait(sc);



 SPI_SET_BITS(sc, MTK_SPIPOLAR, 1);
}
