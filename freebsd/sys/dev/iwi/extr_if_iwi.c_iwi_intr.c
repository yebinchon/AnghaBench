
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwi_softc {int sc_dev; int * txq; scalar_t__ sc_busy_timer; int flags; } ;


 int CSR_READ_4 (struct iwi_softc*,int ) ;
 int CSR_WRITE_4 (struct iwi_softc*,int ,int) ;
 int IWI_CSR_INTR ;
 int IWI_FLAG_BUSY ;
 int IWI_INTR_CMD_DONE ;
 int IWI_INTR_FATAL_ERROR ;
 int IWI_INTR_FW_INITED ;
 int IWI_INTR_PARITY_ERROR ;
 int IWI_INTR_RADIO_OFF ;
 int IWI_INTR_RX_DONE ;
 int IWI_INTR_TX1_DONE ;
 int IWI_INTR_TX2_DONE ;
 int IWI_INTR_TX3_DONE ;
 int IWI_INTR_TX4_DONE ;
 int IWI_LOCK (struct iwi_softc*) ;
 int IWI_LOCK_DECL ;
 int IWI_UNLOCK (struct iwi_softc*) ;
 int device_printf (int ,char*) ;
 int iwi_fatal_error_intr (struct iwi_softc*) ;
 int iwi_radio_off_intr (struct iwi_softc*) ;
 int iwi_rx_intr (struct iwi_softc*) ;
 int iwi_tx_intr (struct iwi_softc*,int *) ;
 int wakeup (struct iwi_softc*) ;

__attribute__((used)) static void
iwi_intr(void *arg)
{
 struct iwi_softc *sc = arg;
 uint32_t r;
 IWI_LOCK_DECL;

 IWI_LOCK(sc);

 if ((r = CSR_READ_4(sc, IWI_CSR_INTR)) == 0 || r == 0xffffffff) {
  IWI_UNLOCK(sc);
  return;
 }


 CSR_WRITE_4(sc, IWI_CSR_INTR, r);

 if (r & IWI_INTR_FATAL_ERROR) {
  iwi_fatal_error_intr(sc);
  goto done;
 }

 if (r & IWI_INTR_FW_INITED) {
  if (!(r & (IWI_INTR_FATAL_ERROR | IWI_INTR_PARITY_ERROR)))
   wakeup(sc);
 }

 if (r & IWI_INTR_RADIO_OFF)
  iwi_radio_off_intr(sc);

 if (r & IWI_INTR_CMD_DONE) {
  sc->flags &= ~IWI_FLAG_BUSY;
  sc->sc_busy_timer = 0;
  wakeup(sc);
 }

 if (r & IWI_INTR_TX1_DONE)
  iwi_tx_intr(sc, &sc->txq[0]);

 if (r & IWI_INTR_TX2_DONE)
  iwi_tx_intr(sc, &sc->txq[1]);

 if (r & IWI_INTR_TX3_DONE)
  iwi_tx_intr(sc, &sc->txq[2]);

 if (r & IWI_INTR_TX4_DONE)
  iwi_tx_intr(sc, &sc->txq[3]);

 if (r & IWI_INTR_RX_DONE)
  iwi_rx_intr(sc);

 if (r & IWI_INTR_PARITY_ERROR) {

  device_printf(sc->sc_dev, "parity error\n");
 }
done:
 IWI_UNLOCK(sc);
}
