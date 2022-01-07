
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbni_softc {int wch; struct ifnet* ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int SBNI_HZ ;
 int callout_reset (int *,int,int ,struct sbni_softc*) ;
 int card_start (struct sbni_softc*) ;
 int hz ;
 int sbni_start_locked (struct ifnet*) ;
 int sbni_timeout ;

__attribute__((used)) static void
sbni_init_locked(struct sbni_softc *sc)
{
 struct ifnet *ifp;

 ifp = sc->ifp;





 if (ifp->if_drv_flags & IFF_DRV_RUNNING)
  return;

 card_start(sc);
 callout_reset(&sc->wch, hz/SBNI_HZ, sbni_timeout, sc);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;


 sbni_start_locked(ifp);
}
