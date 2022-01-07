
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct tuntap_softc {int tun_flags; TYPE_1__ tun_rsel; int * tun_sigio; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; struct tuntap_softc* if_softc; } ;


 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int IFQ_IS_EMPTY (int *) ;
 int IF_DEQUEUE (int *,struct mbuf*) ;
 int KNOTE_LOCKED (int *,int ) ;
 scalar_t__ PZERO ;
 int SIGIO ;
 int TUNDEBUG (struct ifnet*,char*,...) ;
 int TUN_ASYNC ;
 int TUN_LOCK (struct tuntap_softc*) ;
 int TUN_READY ;
 int TUN_RWAIT ;
 int TUN_UNLOCK (struct tuntap_softc*) ;
 int TUN_VMNET ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;
 int pgsigio (int **,int ,int ) ;
 int selwakeuppri (TYPE_1__*,scalar_t__) ;
 int wakeup (struct tuntap_softc*) ;

__attribute__((used)) static void
tunstart_l2(struct ifnet *ifp)
{
 struct tuntap_softc *tp = ifp->if_softc;

 TUNDEBUG(ifp, "starting\n");






 TUN_LOCK(tp);
 if (((tp->tun_flags & TUN_VMNET) == 0) &&
     ((tp->tun_flags & TUN_READY) != TUN_READY)) {
  struct mbuf *m;


  TUNDEBUG(ifp, "not ready, tun_flags = 0x%x\n", tp->tun_flags);

  for (;;) {
   IF_DEQUEUE(&ifp->if_snd, m);
   if (m != ((void*)0)) {
    m_freem(m);
    if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
   } else
    break;
  }
  TUN_UNLOCK(tp);

  return;
 }

 ifp->if_drv_flags |= IFF_DRV_OACTIVE;

 if (!IFQ_IS_EMPTY(&ifp->if_snd)) {
  if (tp->tun_flags & TUN_RWAIT) {
   tp->tun_flags &= ~TUN_RWAIT;
   wakeup(tp);
  }

  if ((tp->tun_flags & TUN_ASYNC) && (tp->tun_sigio != ((void*)0))) {
   TUN_UNLOCK(tp);
   pgsigio(&tp->tun_sigio, SIGIO, 0);
   TUN_LOCK(tp);
  }

  selwakeuppri(&tp->tun_rsel, PZERO+1);
  KNOTE_LOCKED(&tp->tun_rsel.si_note, 0);
  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
 }

 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
 TUN_UNLOCK(tp);
}
