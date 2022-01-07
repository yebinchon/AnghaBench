
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rl_tx_prodidx; int rl_tx_free; int rl_tx_desc_cnt; } ;
struct rl_softc {int rl_watchdog_timer; int rl_flags; TYPE_1__ rl_ldata; int rl_txstart; } ;
struct netmap_kring {scalar_t__ nr_hwcur; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_capenable; int if_drv_flags; int if_snd; struct rl_softc* if_softc; } ;
struct TYPE_4__ {struct netmap_kring** tx_rings; } ;


 int CSR_WRITE_1 (struct rl_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct rl_softc*,int ,int) ;
 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFCAP_NETMAP ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 TYPE_2__* NA (struct ifnet*) ;
 int RL_FLAG_LINK ;
 int RL_TIMERCNT ;
 int RL_TXSTART_START ;
 scalar_t__ re_encap (struct rl_softc*,struct mbuf**) ;
 int re_start_tx (struct rl_softc*) ;

__attribute__((used)) static void
re_start_locked(struct ifnet *ifp)
{
 struct rl_softc *sc;
 struct mbuf *m_head;
 int queued;

 sc = ifp->if_softc;
 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING || (sc->rl_flags & RL_FLAG_LINK) == 0)
  return;

 for (queued = 0; !IFQ_DRV_IS_EMPTY(&ifp->if_snd) &&
     sc->rl_ldata.rl_tx_free > 1;) {
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m_head);
  if (m_head == ((void*)0))
   break;

  if (re_encap(sc, &m_head) != 0) {
   if (m_head == ((void*)0))
    break;
   IFQ_DRV_PREPEND(&ifp->if_snd, m_head);
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   break;
  }





  ETHER_BPF_MTAP(ifp, m_head);

  queued++;
 }

 if (queued == 0) {




  return;
 }

 re_start_tx(sc);
}
