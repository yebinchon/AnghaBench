
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int if_snd; } ;
struct hn_txdesc {int dummy; } ;
struct hn_tx_ring {int hn_suspended; scalar_t__ hn_agg_pktleft; int * hn_agg_txd; int hn_no_txdescs; int hn_tx_lock; struct hn_softc* hn_sc; } ;
struct hn_softc {struct hn_tx_ring* hn_tx_ring; struct ifnet* hn_ifp; } ;


 int CSUM_IP6_TCP ;
 int CSUM_IP6_UDP ;
 int CSUM_IP_TCP ;
 int CSUM_IP_UDP ;
 int CSUM_TSO ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 scalar_t__ __predict_false (int) ;
 int atomic_set_int (int*,int) ;
 int hn_encap (struct ifnet*,struct hn_tx_ring*,struct hn_txdesc*,struct mbuf**) ;
 int hn_flush_txagg (struct ifnet*,struct hn_tx_ring*) ;
 struct mbuf* hn_set_hlen (struct mbuf*) ;
 struct mbuf* hn_tso_fixup (struct mbuf*) ;
 struct hn_txdesc* hn_txdesc_get (struct hn_tx_ring*) ;
 int hn_txpkt (struct ifnet*,struct hn_tx_ring*,struct hn_txdesc*) ;
 int hn_use_if_start ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
hn_start_locked(struct hn_tx_ring *txr, int len)
{
 struct hn_softc *sc = txr->hn_sc;
 struct ifnet *ifp = sc->hn_ifp;
 int sched = 0;

 KASSERT(hn_use_if_start,
     ("hn_start_locked is called, when if_start is disabled"));
 KASSERT(txr == &sc->hn_tx_ring[0], ("not the first TX ring"));
 mtx_assert(&txr->hn_tx_lock, MA_OWNED);
 KASSERT(txr->hn_agg_txd == ((void*)0), ("lingering aggregating txdesc"));

 if (__predict_false(txr->hn_suspended))
  return (0);

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING)
  return (0);

 while (!IFQ_DRV_IS_EMPTY(&ifp->if_snd)) {
  struct hn_txdesc *txd;
  struct mbuf *m_head;
  int error;

  IFQ_DRV_DEQUEUE(&ifp->if_snd, m_head);
  if (m_head == ((void*)0))
   break;

  if (len > 0 && m_head->m_pkthdr.len > len) {





   IFQ_DRV_PREPEND(&ifp->if_snd, m_head);
   sched = 1;
   break;
  }
  txd = hn_txdesc_get(txr);
  if (txd == ((void*)0)) {
   txr->hn_no_txdescs++;
   IFQ_DRV_PREPEND(&ifp->if_snd, m_head);
   atomic_set_int(&ifp->if_drv_flags, IFF_DRV_OACTIVE);
   break;
  }

  error = hn_encap(ifp, txr, txd, &m_head);
  if (error) {

   KASSERT(txr->hn_agg_txd == ((void*)0),
       ("encap failed w/ pending aggregating txdesc"));
   continue;
  }

  if (txr->hn_agg_pktleft == 0) {
   if (txr->hn_agg_txd != ((void*)0)) {
    KASSERT(m_head == ((void*)0),
        ("pending mbuf for aggregating txdesc"));
    error = hn_flush_txagg(ifp, txr);
    if (__predict_false(error)) {
     atomic_set_int(&ifp->if_drv_flags,
         IFF_DRV_OACTIVE);
     break;
    }
   } else {
    KASSERT(m_head != ((void*)0), ("mbuf was freed"));
    error = hn_txpkt(ifp, txr, txd);
    if (__predict_false(error)) {

     IFQ_DRV_PREPEND(&ifp->if_snd, m_head);
     atomic_set_int(&ifp->if_drv_flags,
         IFF_DRV_OACTIVE);
     break;
    }
   }
  }
 }


 if (txr->hn_agg_txd != ((void*)0))
  hn_flush_txagg(ifp, txr);
 return (sched);
}
