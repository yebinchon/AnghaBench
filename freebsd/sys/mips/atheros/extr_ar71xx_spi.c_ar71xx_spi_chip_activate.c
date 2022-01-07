
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ar71xx_spi_softc {int dummy; } ;


 int AR71XX_SPI_IO_CTRL ;
 int SPI_BARRIER_WRITE (struct ar71xx_spi_softc*) ;
 int SPI_IO_CTRL_CS0 ;
 int SPI_IO_CTRL_CSMASK ;
 int SPI_WRITE (struct ar71xx_spi_softc*,int ,int) ;

__attribute__((used)) static void
ar71xx_spi_chip_activate(struct ar71xx_spi_softc *sc, int cs)
{
 uint32_t ioctrl = SPI_IO_CTRL_CSMASK;



 ioctrl &= ~(SPI_IO_CTRL_CS0 << cs);







 SPI_BARRIER_WRITE(sc);
 SPI_WRITE(sc, AR71XX_SPI_IO_CTRL, ioctrl);
 SPI_BARRIER_WRITE(sc);
}
