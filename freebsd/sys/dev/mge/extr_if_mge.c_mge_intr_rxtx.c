
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mge_softc {TYPE_1__* ifp; } ;
struct TYPE_2__ {int if_capenable; } ;


 int IFCAP_POLLING ;
 int MGE_GLOBAL_LOCK (struct mge_softc*) ;
 int MGE_GLOBAL_UNLOCK (struct mge_softc*) ;
 int MGE_PORT_INT_CAUSE ;
 int MGE_PORT_INT_CAUSE_EXT ;
 int MGE_PORT_INT_EXT_TXBUF0 ;
 int MGE_PORT_INT_EXT_TXUR ;
 int MGE_READ (struct mge_softc*,int ) ;
 int MGE_RECEIVE_UNLOCK (struct mge_softc*) ;
 int MGE_TRANSMIT_UNLOCK (struct mge_softc*) ;
 int MGE_WRITE (struct mge_softc*,int ,int) ;
 int mge_intr_rx_check (struct mge_softc*,int,int) ;
 int mge_intr_tx_locked (struct mge_softc*) ;

__attribute__((used)) static void
mge_intr_rxtx(void *arg)
{
 struct mge_softc *sc;
 uint32_t int_cause, int_cause_ext;

 sc = arg;
 MGE_GLOBAL_LOCK(sc);
 int_cause = MGE_READ(sc, MGE_PORT_INT_CAUSE);
 int_cause_ext = MGE_READ(sc, MGE_PORT_INT_CAUSE_EXT);


 if (int_cause_ext & (MGE_PORT_INT_EXT_TXBUF0 |
     MGE_PORT_INT_EXT_TXUR)) {
  MGE_WRITE(sc, MGE_PORT_INT_CAUSE_EXT, ~(int_cause_ext &
      (MGE_PORT_INT_EXT_TXBUF0 | MGE_PORT_INT_EXT_TXUR)));
  mge_intr_tx_locked(sc);
 }

 MGE_TRANSMIT_UNLOCK(sc);


 mge_intr_rx_check(sc, int_cause, int_cause_ext);

 MGE_RECEIVE_UNLOCK(sc);
}
