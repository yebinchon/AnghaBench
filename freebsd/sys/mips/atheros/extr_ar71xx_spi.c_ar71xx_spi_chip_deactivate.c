
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar71xx_spi_softc {int dummy; } ;


 int AR71XX_SPI_IO_CTRL ;
 int SPI_IO_CTRL_CSMASK ;
 int SPI_WRITE (struct ar71xx_spi_softc*,int ,int ) ;

__attribute__((used)) static void
ar71xx_spi_chip_deactivate(struct ar71xx_spi_softc *sc, int cs)
{



 SPI_WRITE(sc, AR71XX_SPI_IO_CTRL, SPI_IO_CTRL_CSMASK);
}
