
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct spi_softc {int dummy; } ;


 int READ4 (struct spi_softc*,int ) ;
 int SPI_DRR ;
 int SPI_DTR ;
 int SPI_SR ;
 int SR_TX_EMPTY ;
 int WRITE4 (struct spi_softc*,int ,int) ;

__attribute__((used)) static int
spi_txrx(struct spi_softc *sc, uint8_t *out_buf,
    uint8_t *in_buf, int bufsz, int cs)
{
 uint32_t data;
 uint32_t i;

 for (i = 0; i < bufsz; i++) {
  WRITE4(sc, SPI_DTR, out_buf[i]);

  while(!(READ4(sc, SPI_SR) & SR_TX_EMPTY))
   continue;

  data = READ4(sc, SPI_DRR);
  if (in_buf)
   in_buf[i] = (data & 0xff);
 }

 return (0);
}
