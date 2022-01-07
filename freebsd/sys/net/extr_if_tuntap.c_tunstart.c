
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct tuntap_softc {int tun_flags; scalar_t__ tun_sigio; TYPE_1__ tun_rsel; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_snd; struct tuntap_softc* if_softc; } ;


 scalar_t__ ALTQ_IS_ENABLED (int *) ;
 int IFQ_LOCK (int *) ;
 int IFQ_POLL_NOLOCK (int *,struct mbuf*) ;
 int IFQ_UNLOCK (int *) ;
 int KNOTE_LOCKED (int *,int ) ;
 scalar_t__ PZERO ;
 int SIGIO ;
 int TUNDEBUG (struct ifnet*,char*) ;
 int TUN_ASYNC ;
 int TUN_LOCK (struct tuntap_softc*) ;
 int TUN_RWAIT ;
 int TUN_UNLOCK (struct tuntap_softc*) ;
 int pgsigio (scalar_t__*,int ,int ) ;
 int selwakeuppri (TYPE_1__*,scalar_t__) ;
 int wakeup (struct tuntap_softc*) ;

__attribute__((used)) static void
tunstart(struct ifnet *ifp)
{
 struct tuntap_softc *tp = ifp->if_softc;
 struct mbuf *m;

 TUNDEBUG(ifp, "starting\n");
 if (ALTQ_IS_ENABLED(&ifp->if_snd)) {
  IFQ_LOCK(&ifp->if_snd);
  IFQ_POLL_NOLOCK(&ifp->if_snd, m);
  if (m == ((void*)0)) {
   IFQ_UNLOCK(&ifp->if_snd);
   return;
  }
  IFQ_UNLOCK(&ifp->if_snd);
 }

 TUN_LOCK(tp);
 if (tp->tun_flags & TUN_RWAIT) {
  tp->tun_flags &= ~TUN_RWAIT;
  wakeup(tp);
 }
 selwakeuppri(&tp->tun_rsel, PZERO + 1);
 KNOTE_LOCKED(&tp->tun_rsel.si_note, 0);
 if (tp->tun_flags & TUN_ASYNC && tp->tun_sigio) {
  TUN_UNLOCK(tp);
  pgsigio(&tp->tun_sigio, SIGIO, 0);
 } else
  TUN_UNLOCK(tp);
}
