
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ error; int transferred; } ;
typedef TYPE_2__ xdma_transfer_status_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {struct ifnet* rcvif; int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; int m_len; } ;
struct ifnet {int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct atse_softc {int xchan_rx; struct ifnet* atse_ifp; } ;


 int ATSE_LOCK (struct atse_softc*) ;
 int ATSE_UNLOCK (struct atse_softc*) ;
 int ETHER_ALIGN ;
 int IFCOUNTER_IERRORS ;
 int atse_rx_enqueue (struct atse_softc*,scalar_t__) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_adj (struct mbuf*,int ) ;
 int m_freem (struct mbuf*) ;
 int stub1 (struct ifnet*,struct mbuf*) ;
 int xdma_dequeue_mbuf (int ,struct mbuf**,TYPE_2__*) ;

__attribute__((used)) static int
atse_xdma_rx_intr(void *arg, xdma_transfer_status_t *status)
{
 xdma_transfer_status_t st;
 struct atse_softc *sc;
 struct ifnet *ifp;
 struct mbuf *m;
 int err;
 uint32_t cnt_processed;

 sc = arg;

 ATSE_LOCK(sc);

 ifp = sc->atse_ifp;

 cnt_processed = 0;
 for (;;) {
  err = xdma_dequeue_mbuf(sc->xchan_rx, &m, &st);
  if (err != 0) {
   break;
  }
  cnt_processed++;

  if (st.error != 0) {
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   m_freem(m);
   continue;
  }

  m->m_pkthdr.len = m->m_len = st.transferred;
  m->m_pkthdr.rcvif = ifp;
  m_adj(m, ETHER_ALIGN);
  ATSE_UNLOCK(sc);
  (*ifp->if_input)(ifp, m);
  ATSE_LOCK(sc);
 }

 atse_rx_enqueue(sc, cnt_processed);

 ATSE_UNLOCK(sc);

 return (0);
}
