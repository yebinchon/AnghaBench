
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ar71xx_spi_softc {int dummy; } ;


 int AR71XX_SPI_IO_CTRL ;
 int AR71XX_SPI_RDS ;
 int SPI_BARRIER_WRITE (struct ar71xx_spi_softc*) ;
 int SPI_IO_CTRL_CLK ;
 int SPI_IO_CTRL_CS0 ;
 int SPI_IO_CTRL_CSMASK ;
 int SPI_IO_CTRL_DO ;
 int SPI_READ (struct ar71xx_spi_softc*,int ) ;
 int SPI_WRITE (struct ar71xx_spi_softc*,int ,int) ;

__attribute__((used)) static uint8_t
ar71xx_spi_txrx(struct ar71xx_spi_softc *sc, int cs, uint8_t data)
{
 int bit;

 uint32_t ioctrl = SPI_IO_CTRL_CSMASK;



 ioctrl &= ~(SPI_IO_CTRL_CS0 << cs);

 uint32_t iod, rds;
 for (bit = 7; bit >=0; bit--) {
  if (data & (1 << bit))
   iod = ioctrl | SPI_IO_CTRL_DO;
  else
   iod = ioctrl & ~SPI_IO_CTRL_DO;
  SPI_BARRIER_WRITE(sc);
  SPI_WRITE(sc, AR71XX_SPI_IO_CTRL, iod);
  SPI_BARRIER_WRITE(sc);
  SPI_WRITE(sc, AR71XX_SPI_IO_CTRL, iod | SPI_IO_CTRL_CLK);
 }




 SPI_BARRIER_WRITE(sc);
 SPI_WRITE(sc, AR71XX_SPI_IO_CTRL, iod);
 SPI_BARRIER_WRITE(sc);
 rds = SPI_READ(sc, AR71XX_SPI_RDS);

 return (rds & 0xff);
}
