
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ jme_tx_cnt; } ;
struct jme_softc {scalar_t__ jme_watchdog_timer; int jme_flags; struct ifnet* jme_ifp; TYPE_1__ jme_cdata; } ;
struct ifnet {int if_snd; int if_drv_flags; } ;


 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int JME_FLAG_LINK ;
 int JME_LOCK_ASSERT (struct jme_softc*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*) ;
 int jme_init_locked (struct jme_softc*) ;
 int jme_start_locked (struct ifnet*) ;
 int jme_txeof (struct jme_softc*) ;

__attribute__((used)) static void
jme_watchdog(struct jme_softc *sc)
{
 struct ifnet *ifp;

 JME_LOCK_ASSERT(sc);

 if (sc->jme_watchdog_timer == 0 || --sc->jme_watchdog_timer)
  return;

 ifp = sc->jme_ifp;
 if ((sc->jme_flags & JME_FLAG_LINK) == 0) {
  if_printf(sc->jme_ifp, "watchdog timeout (missed link)\n");
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  jme_init_locked(sc);
  return;
 }
 jme_txeof(sc);
 if (sc->jme_cdata.jme_tx_cnt == 0) {
  if_printf(sc->jme_ifp,
      "watchdog timeout (missed Tx interrupts) -- recovering\n");
  if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
   jme_start_locked(ifp);
  return;
 }

 if_printf(sc->jme_ifp, "watchdog timeout\n");
 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 jme_init_locked(sc);
 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
  jme_start_locked(ifp);
}
