
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct spi_command {scalar_t__ tx_cmd_sz; scalar_t__ rx_cmd_sz; scalar_t__ tx_data_sz; scalar_t__ rx_data_sz; } ;
struct intelspi_softc {int sc_flags; scalar_t__ sc_len; int sc_dev; scalar_t__ sc_written; scalar_t__ sc_read; struct spi_command* sc_cmd; int sc_mtx; } ;
typedef int device_t ;


 int CS_HIGH ;
 int CS_LOW ;
 int EINTR ;
 int EIO ;
 int EWOULDBLOCK ;
 int INTELSPI_BUSY ;
 int INTELSPI_LOCK (struct intelspi_softc*) ;
 int INTELSPI_READ (struct intelspi_softc*,int ) ;
 int INTELSPI_SSPREG_SSCR1 ;
 int INTELSPI_UNLOCK (struct intelspi_softc*) ;
 int INTELSPI_WRITE (struct intelspi_softc*,int ,int) ;
 int KASSERT (int,char*) ;
 int SSCR1_RIE ;
 int SSCR1_TIE ;
 int SSCR1_TINTE ;
 struct intelspi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int intelspi_set_cs (struct intelspi_softc*,int ) ;
 int intelspi_transact (struct intelspi_softc*) ;
 int mtx_sleep (int ,int *,int ,char*,int) ;
 int wakeup_one (int ) ;

__attribute__((used)) static int
intelspi_transfer(device_t dev, device_t child, struct spi_command *cmd)
{
 struct intelspi_softc *sc;
 int err;
 uint32_t sscr1;

 sc = device_get_softc(dev);
 err = 0;

 KASSERT(cmd->tx_cmd_sz == cmd->rx_cmd_sz,
     ("TX/RX command sizes should be equal"));
 KASSERT(cmd->tx_data_sz == cmd->rx_data_sz,
     ("TX/RX data sizes should be equal"));

 INTELSPI_LOCK(sc);


 while (sc->sc_flags & INTELSPI_BUSY) {
  err = mtx_sleep(dev, &sc->sc_mtx, 0, "intelspi", 0);
  if (err == EINTR) {
   INTELSPI_UNLOCK(sc);
   return (err);
  }
 }


 sc->sc_flags = INTELSPI_BUSY;


 sc->sc_cmd = cmd;
 sc->sc_read = 0;
 sc->sc_written = 0;
 sc->sc_len = cmd->tx_cmd_sz + cmd->tx_data_sz;


 intelspi_set_cs(sc, CS_LOW);

 if (!intelspi_transact(sc)) {

  sscr1 = INTELSPI_READ(sc, INTELSPI_SSPREG_SSCR1);
  sscr1 |= (SSCR1_TIE | SSCR1_RIE | SSCR1_TINTE);
  INTELSPI_WRITE(sc, INTELSPI_SSPREG_SSCR1, sscr1);


  err = mtx_sleep(dev, &sc->sc_mtx, 0, "intelspi", hz * 2);
 }


 intelspi_set_cs(sc, CS_HIGH);


 sc->sc_cmd = ((void*)0);
 sc->sc_read = 0;
 sc->sc_written = 0;
 sc->sc_len = 0;


 sscr1 = INTELSPI_READ(sc, INTELSPI_SSPREG_SSCR1);
 sscr1 &= ~(SSCR1_TIE | SSCR1_RIE | SSCR1_TINTE);
 INTELSPI_WRITE(sc, INTELSPI_SSPREG_SSCR1, sscr1);


 sc->sc_flags = 0;
 wakeup_one(dev);
 INTELSPI_UNLOCK(sc);





 if (err == EWOULDBLOCK) {
  device_printf(sc->sc_dev, "transfer timeout\n");
  err = EIO;
 }

 return (err);
}
