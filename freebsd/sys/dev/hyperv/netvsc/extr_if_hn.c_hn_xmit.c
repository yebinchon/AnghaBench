
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; } ;
struct hn_txdesc {int dummy; } ;
struct hn_tx_ring {int hn_suspended; int hn_oactive; scalar_t__ hn_agg_pktleft; int * hn_agg_txd; int hn_mbuf_br; int hn_no_txdescs; int hn_tx_lock; struct hn_softc* hn_sc; } ;
struct hn_softc {struct ifnet* hn_ifp; } ;


 int IFF_DRV_RUNNING ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 scalar_t__ __predict_false (int) ;
 int drbr_advance (struct ifnet*,int ) ;
 struct mbuf* drbr_peek (struct ifnet*,int ) ;
 int drbr_putback (struct ifnet*,int ,struct mbuf*) ;
 int hn_encap (struct ifnet*,struct hn_tx_ring*,struct hn_txdesc*,struct mbuf**) ;
 int hn_flush_txagg (struct ifnet*,struct hn_tx_ring*) ;
 struct hn_txdesc* hn_txdesc_get (struct hn_tx_ring*) ;
 int hn_txpkt (struct ifnet*,struct hn_tx_ring*,struct hn_txdesc*) ;
 scalar_t__ hn_use_if_start ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
hn_xmit(struct hn_tx_ring *txr, int len)
{
 struct hn_softc *sc = txr->hn_sc;
 struct ifnet *ifp = sc->hn_ifp;
 struct mbuf *m_head;
 int sched = 0;

 mtx_assert(&txr->hn_tx_lock, MA_OWNED);




 KASSERT(txr->hn_agg_txd == ((void*)0), ("lingering aggregating txdesc"));

 if (__predict_false(txr->hn_suspended))
  return (0);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0 || txr->hn_oactive)
  return (0);

 while ((m_head = drbr_peek(ifp, txr->hn_mbuf_br)) != ((void*)0)) {
  struct hn_txdesc *txd;
  int error;

  if (len > 0 && m_head->m_pkthdr.len > len) {





   drbr_putback(ifp, txr->hn_mbuf_br, m_head);
   sched = 1;
   break;
  }

  txd = hn_txdesc_get(txr);
  if (txd == ((void*)0)) {
   txr->hn_no_txdescs++;
   drbr_putback(ifp, txr->hn_mbuf_br, m_head);
   txr->hn_oactive = 1;
   break;
  }

  error = hn_encap(ifp, txr, txd, &m_head);
  if (error) {

   KASSERT(txr->hn_agg_txd == ((void*)0),
       ("encap failed w/ pending aggregating txdesc"));
   drbr_advance(ifp, txr->hn_mbuf_br);
   continue;
  }

  if (txr->hn_agg_pktleft == 0) {
   if (txr->hn_agg_txd != ((void*)0)) {
    KASSERT(m_head == ((void*)0),
        ("pending mbuf for aggregating txdesc"));
    error = hn_flush_txagg(ifp, txr);
    if (__predict_false(error)) {
     txr->hn_oactive = 1;
     break;
    }
   } else {
    KASSERT(m_head != ((void*)0), ("mbuf was freed"));
    error = hn_txpkt(ifp, txr, txd);
    if (__predict_false(error)) {

     drbr_putback(ifp, txr->hn_mbuf_br,
         m_head);
     txr->hn_oactive = 1;
     break;
    }
   }
  }
  drbr_advance(ifp, txr->hn_mbuf_br);
 }


 if (txr->hn_agg_txd != ((void*)0))
  hn_flush_txagg(ifp, txr);
 return (sched);
}
