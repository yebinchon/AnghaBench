
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifnet {int dummy; } ;
struct are_softc {int sc_rxint_mask; int sc_txint_mask; struct ifnet* are_ifp; } ;


 int ARE_LOCK (struct are_softc*) ;
 int ARE_UNLOCK (struct are_softc*) ;
 int CSR_READ_4 (struct are_softc*,int ) ;
 int CSR_STATUS ;
 int CSR_WRITE_4 (struct are_softc*,int ,int) ;
 int are_rx (struct are_softc*) ;
 int are_start (struct ifnet*) ;
 int are_tx (struct are_softc*) ;

__attribute__((used)) static void
are_intr(void *arg)
{
 struct are_softc *sc = arg;
 uint32_t status;
 struct ifnet *ifp = sc->are_ifp;

 ARE_LOCK(sc);



 status = CSR_READ_4(sc, CSR_STATUS);
 if (status) {
  CSR_WRITE_4(sc, CSR_STATUS, status);
 }
 if (status & sc->sc_rxint_mask) {
  are_rx(sc);
 }
 if (status & sc->sc_txint_mask) {
  are_tx(sc);
 }


 are_start(ifp);

 ARE_UNLOCK(sc);
}
