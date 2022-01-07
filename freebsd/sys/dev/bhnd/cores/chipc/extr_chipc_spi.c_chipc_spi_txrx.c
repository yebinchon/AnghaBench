
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct chipc_spi_softc {int dummy; } ;


 int CHIPC_SPI_FLASHCTL ;
 int CHIPC_SPI_FLASHCTL_CSACTIVE ;
 int CHIPC_SPI_FLASHCTL_START ;
 int CHIPC_SPI_FLASHDATA ;
 int SPI_BARRIER_WRITE (struct chipc_spi_softc*) ;
 int SPI_READ (struct chipc_spi_softc*,int ) ;
 int SPI_WRITE (struct chipc_spi_softc*,int ,int) ;
 scalar_t__ chipc_spi_wait (struct chipc_spi_softc*) ;

__attribute__((used)) static int
chipc_spi_txrx(struct chipc_spi_softc *sc, uint8_t out, uint8_t* in)
{
 uint32_t ctl;

 ctl = CHIPC_SPI_FLASHCTL_START | CHIPC_SPI_FLASHCTL_CSACTIVE | out;
 SPI_BARRIER_WRITE(sc);
 SPI_WRITE(sc, CHIPC_SPI_FLASHCTL, ctl);
 SPI_BARRIER_WRITE(sc);

 if (chipc_spi_wait(sc))
  return (-1);

 *in = SPI_READ(sc, CHIPC_SPI_FLASHDATA) & 0xff;
 return (0);
}
