
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct wi_softc {int sc_flags; int sc_snd; int sc_enabled; scalar_t__ wi_gone; } ;


 int CSR_READ_2 (struct wi_softc*,int ) ;
 int CSR_WRITE_2 (struct wi_softc*,int ,int) ;
 int WI_EVENT_ACK ;
 int WI_EVENT_STAT ;
 int WI_EV_ALLOC ;
 int WI_EV_INFO ;
 int WI_EV_RX ;
 int WI_EV_TX_EXC ;
 int WI_FLAGS_RUNNING ;
 int WI_INTRS ;
 int WI_INT_EN ;
 int WI_LOCK (struct wi_softc*) ;
 int WI_UNLOCK (struct wi_softc*) ;
 int * mbufq_first (int *) ;
 int wi_info_intr (struct wi_softc*) ;
 int wi_rx_intr (struct wi_softc*) ;
 int wi_start (struct wi_softc*) ;
 int wi_tx_ex_intr (struct wi_softc*) ;
 int wi_tx_intr (struct wi_softc*) ;

void
wi_intr(void *arg)
{
 struct wi_softc *sc = arg;
 u_int16_t status;

 WI_LOCK(sc);

 if (sc->wi_gone || !sc->sc_enabled ||
     (sc->sc_flags & WI_FLAGS_RUNNING) == 0) {
  CSR_WRITE_2(sc, WI_INT_EN, 0);
  CSR_WRITE_2(sc, WI_EVENT_ACK, 0xFFFF);
  WI_UNLOCK(sc);
  return;
 }


 CSR_WRITE_2(sc, WI_INT_EN, 0);

 status = CSR_READ_2(sc, WI_EVENT_STAT);
 if (status & WI_EV_RX)
  wi_rx_intr(sc);
 if (status & WI_EV_ALLOC)
  wi_tx_intr(sc);
 if (status & WI_EV_TX_EXC)
  wi_tx_ex_intr(sc);
 if (status & WI_EV_INFO)
  wi_info_intr(sc);
 if (mbufq_first(&sc->sc_snd) != ((void*)0))
  wi_start(sc);


 CSR_WRITE_2(sc, WI_INT_EN, WI_INTRS);

 WI_UNLOCK(sc);

 return;
}
