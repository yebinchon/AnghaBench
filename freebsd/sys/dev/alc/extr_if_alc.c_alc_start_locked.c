
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; struct alc_softc* if_softc; } ;
struct TYPE_2__ {scalar_t__ alc_tx_cnt; } ;
struct alc_softc {int alc_flags; TYPE_1__ alc_cdata; } ;


 int ALC_FLAG_LINK ;
 int ALC_LOCK_ASSERT (struct alc_softc*) ;
 scalar_t__ ALC_TX_DESC_HIWAT ;
 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 scalar_t__ alc_encap (struct alc_softc*,struct mbuf**) ;
 int alc_start_tx (struct alc_softc*) ;
 int alc_txeof (struct alc_softc*) ;

__attribute__((used)) static void
alc_start_locked(struct ifnet *ifp)
{
 struct alc_softc *sc;
 struct mbuf *m_head;
 int enq;

 sc = ifp->if_softc;

 ALC_LOCK_ASSERT(sc);


 if (sc->alc_cdata.alc_tx_cnt >= ALC_TX_DESC_HIWAT)
  alc_txeof(sc);

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING || (sc->alc_flags & ALC_FLAG_LINK) == 0)
  return;

 for (enq = 0; !IFQ_DRV_IS_EMPTY(&ifp->if_snd); ) {
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m_head);
  if (m_head == ((void*)0))
   break;





  if (alc_encap(sc, &m_head)) {
   if (m_head == ((void*)0))
    break;
   IFQ_DRV_PREPEND(&ifp->if_snd, m_head);
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   break;
  }

  enq++;




  ETHER_BPF_MTAP(ifp, m_head);
 }

 if (enq > 0)
  alc_start_tx(sc);
}
