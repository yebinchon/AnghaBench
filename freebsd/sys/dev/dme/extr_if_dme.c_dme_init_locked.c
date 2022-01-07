
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; } ;
struct dme_softc {int dme_tick_ch; struct ifnet* dme_ifp; } ;


 int DME_ASSERT_LOCKED (struct dme_softc*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int callout_reset (int *,int ,int ,struct dme_softc*) ;
 int dme_config (struct dme_softc*) ;
 int dme_reset (struct dme_softc*) ;
 int dme_tick ;
 int hz ;

__attribute__((used)) static void dme_init_locked(struct dme_softc *sc)
{
 struct ifnet *ifp = sc->dme_ifp;

 DME_ASSERT_LOCKED(sc);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;

 dme_reset(sc);
 dme_config(sc);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 callout_reset(&sc->dme_tick_ch, hz, dme_tick, sc);
}
