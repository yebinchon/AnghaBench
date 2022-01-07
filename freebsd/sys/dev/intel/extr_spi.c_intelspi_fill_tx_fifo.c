
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
struct spi_command {size_t tx_cmd_sz; scalar_t__ tx_data; scalar_t__ tx_cmd; } ;
struct intelspi_softc {scalar_t__ sc_written; scalar_t__ sc_len; struct spi_command* sc_cmd; } ;


 int INTELSPI_ASSERT_LOCKED (struct intelspi_softc*) ;
 int INTELSPI_SSPREG_SSDR ;
 int INTELSPI_WRITE (struct intelspi_softc*,int ,int ) ;
 int intelspi_txfifo_full (struct intelspi_softc*) ;

__attribute__((used)) static void
intelspi_fill_tx_fifo(struct intelspi_softc *sc)
{
 struct spi_command *cmd;
 uint32_t written;
 uint8_t *data;

 INTELSPI_ASSERT_LOCKED(sc);

 cmd = sc->sc_cmd;
 while (sc->sc_written < sc->sc_len &&
     !intelspi_txfifo_full(sc)) {
  data = (uint8_t *)cmd->tx_cmd;
  written = sc->sc_written++;

  if (written >= cmd->tx_cmd_sz) {
   data = (uint8_t *)cmd->tx_data;
   written -= cmd->tx_cmd_sz;
  }
  INTELSPI_WRITE(sc, INTELSPI_SSPREG_SSDR, data[written]);
 }
}
