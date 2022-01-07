
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ error; } ;
typedef TYPE_1__ xdma_transfer_status_t ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct atse_softc {int txcount; int xchan_tx; struct ifnet* atse_ifp; } ;


 int ATSE_LOCK (struct atse_softc*) ;
 int ATSE_UNLOCK (struct atse_softc*) ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_OACTIVE ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;
 int xdma_dequeue_mbuf (int ,struct mbuf**,TYPE_1__*) ;

__attribute__((used)) static int
atse_xdma_tx_intr(void *arg, xdma_transfer_status_t *status)
{
 xdma_transfer_status_t st;
 struct atse_softc *sc;
 struct ifnet *ifp;
 struct mbuf *m;
 int err;

 sc = arg;

 ATSE_LOCK(sc);

 ifp = sc->atse_ifp;

 for (;;) {
  err = xdma_dequeue_mbuf(sc->xchan_tx, &m, &st);
  if (err != 0) {
   break;
  }

  if (st.error != 0) {
   if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  }

  m_freem(m);
  sc->txcount--;
 }

 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 ATSE_UNLOCK(sc);

 return (0);
}
