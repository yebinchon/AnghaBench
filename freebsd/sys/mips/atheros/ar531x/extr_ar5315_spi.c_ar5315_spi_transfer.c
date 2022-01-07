
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct spi_command {int tx_cmd_sz; int rx_cmd_sz; scalar_t__ rx_cmd; scalar_t__ tx_cmd; int rx_data_sz; int rx_data; } ;
struct ar5315_spi_softc {int sc_debug; } ;
typedef int device_t ;


 int ARSPI_CTL_BUSY ;
 int ARSPI_CTL_RXCNT_MASK ;
 int ARSPI_CTL_RXCNT_SHIFT ;
 int ARSPI_CTL_START ;
 int ARSPI_CTL_TXCNT_MASK ;
 int ARSPI_CTL_TXCNT_SHIFT ;
 int ARSPI_REG_CTL ;
 int ARSPI_REG_DATA ;
 int ARSPI_REG_OPCODE ;
 int SPIBUS_CS_HIGH ;
 int SPI_READ (struct ar5315_spi_softc*,int ) ;
 int SPI_WRITE (struct ar5315_spi_softc*,int ,int) ;
 int ar5315_spi_chip_activate (struct ar5315_spi_softc*,int) ;
 int ar5315_spi_chip_deactivate (struct ar5315_spi_softc*,int) ;
 int ar5315_spi_get_block (int,int ,int ) ;
 struct ar5315_spi_softc* device_get_softc (int ) ;
 int printf (char*,...) ;
 int spibus_get_cs (int ,int*) ;

__attribute__((used)) static int
ar5315_spi_transfer(device_t dev, device_t child, struct spi_command *cmd)
{
 struct ar5315_spi_softc *sc;
 uint8_t *buf_in, *buf_out;
 int lin, lout;
 uint32_t ctl, cnt, op, rdat, cs;
 int i, j;

 sc = device_get_softc(dev);

 if (sc->sc_debug & 0x8000)
  printf("ar5315_spi_transfer: CMD ");

 spibus_get_cs(child, &cs);

 cs &= ~SPIBUS_CS_HIGH;


 ar5315_spi_chip_activate(sc, cs);

 do {
  ctl = SPI_READ(sc, ARSPI_REG_CTL);
 } while (ctl & ARSPI_CTL_BUSY);




 buf_out = (uint8_t *)cmd->tx_cmd;
 op = buf_out[0];
 if(op == 0x0b) {
  int offset = buf_out[1] << 16 | buf_out[2] << 8 | buf_out[3];
  ar5315_spi_get_block(offset, cmd->rx_data, cmd->rx_data_sz);
  return (0);
 }
 do {
  ctl = SPI_READ(sc, ARSPI_REG_CTL);
 } while (ctl & ARSPI_CTL_BUSY);
 if (sc->sc_debug & 0x8000) {
  printf("%08x ", op);
  printf("tx_cmd_sz=%d rx_cmd_sz=%d ", cmd->tx_cmd_sz,
   cmd->rx_cmd_sz);
  if(cmd->tx_cmd_sz != 1) {
   printf("%08x ", *((uint32_t *)cmd->tx_cmd));
   printf("%08x ", *((uint32_t *)cmd->tx_cmd + 1));
  }
 }
 SPI_WRITE(sc, ARSPI_REG_OPCODE, op);


 ctl &= ~(ARSPI_CTL_TXCNT_MASK | ARSPI_CTL_RXCNT_MASK);


 cnt = 1;

 ctl |= (cnt << ARSPI_CTL_TXCNT_SHIFT);

 cnt = 24;

 if(cmd->rx_cmd_sz < 24)
  cnt = cmd->rx_cmd_sz;
 ctl |= (cnt << ARSPI_CTL_RXCNT_SHIFT);

 ctl |= ARSPI_CTL_START;

 SPI_WRITE(sc, ARSPI_REG_CTL, ctl);

 if(op == 0x0b)
  SPI_WRITE(sc, ARSPI_REG_DATA, 0);
 if (sc->sc_debug & 0x8000)
  printf("\nDATA ");




 buf_in = (uint8_t *)cmd->rx_cmd;

 lin = cmd->rx_cmd_sz;
 if (sc->sc_debug & 0x8000)
  printf("t%d r%d ", lout, lin);
 for(i = 0; i <= (cnt - 1) / 4; ++i) {
  do {
   ctl = SPI_READ(sc, ARSPI_REG_CTL);
  } while (ctl & ARSPI_CTL_BUSY);

  rdat = SPI_READ(sc, ARSPI_REG_DATA);
  if (sc->sc_debug & 0x8000)
   printf("I%08x ", rdat);

  for(j = 0; j < 4; ++j) {
   buf_in[i * 4 + j + 1] = 0xff & (rdat >> (8 * j));
   if(i * 4 + j + 2 == cnt)
    break;
  }
 }

 ar5315_spi_chip_deactivate(sc, cs);



 if (sc->sc_debug & 0x8000)
  printf("\n");

 return (0);
}
