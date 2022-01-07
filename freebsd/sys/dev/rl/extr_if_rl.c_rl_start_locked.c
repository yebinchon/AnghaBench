
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cur_tx; } ;
struct rl_softc {int rl_flags; int rl_watchdog_timer; TYPE_2__ rl_cdata; int rl_txthresh; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; struct rl_softc* if_softc; } ;
struct TYPE_5__ {int len; } ;
struct TYPE_7__ {TYPE_1__ m_pkthdr; } ;


 int BPF_MTAP (struct ifnet*,TYPE_3__*) ;
 int CSR_WRITE_4 (struct rl_softc*,int ,int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 TYPE_3__* RL_CUR_TXMBUF (struct rl_softc*) ;
 int RL_CUR_TXSTAT (struct rl_softc*) ;
 int RL_FLAG_LINK ;
 int RL_INC (int ) ;
 int RL_LOCK_ASSERT (struct rl_softc*) ;
 int RL_TXTHRESH (int ) ;
 scalar_t__ rl_encap (struct rl_softc*,struct mbuf**) ;

__attribute__((used)) static void
rl_start_locked(struct ifnet *ifp)
{
 struct rl_softc *sc = ifp->if_softc;
 struct mbuf *m_head = ((void*)0);

 RL_LOCK_ASSERT(sc);

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING || (sc->rl_flags & RL_FLAG_LINK) == 0)
  return;

 while (RL_CUR_TXMBUF(sc) == ((void*)0)) {

  IFQ_DRV_DEQUEUE(&ifp->if_snd, m_head);

  if (m_head == ((void*)0))
   break;

  if (rl_encap(sc, &m_head)) {
   if (m_head == ((void*)0))
    break;
   IFQ_DRV_PREPEND(&ifp->if_snd, m_head);
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   break;
  }


  BPF_MTAP(ifp, RL_CUR_TXMBUF(sc));


  CSR_WRITE_4(sc, RL_CUR_TXSTAT(sc),
      RL_TXTHRESH(sc->rl_txthresh) |
      RL_CUR_TXMBUF(sc)->m_pkthdr.len);

  RL_INC(sc->rl_cdata.cur_tx);


  sc->rl_watchdog_timer = 5;
 }






 if (RL_CUR_TXMBUF(sc) != ((void*)0))
  ifp->if_drv_flags |= IFF_DRV_OACTIVE;
}
