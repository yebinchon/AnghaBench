
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mge_softc {int phy_attached; scalar_t__ mge_media_status; int wd_callout; int ifp; TYPE_2__* mii; } ;
struct TYPE_3__ {scalar_t__ ifm_media; } ;
struct TYPE_4__ {TYPE_1__ mii_media; } ;


 int KASSERT (int,char*) ;
 int MGE_GLOBAL_LOCK (struct mge_softc*) ;
 int MGE_GLOBAL_UNLOCK (struct mge_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct mge_softc*) ;
 int hz ;
 int mge_ifmedia_upd (int ) ;
 int mge_watchdog (struct mge_softc*) ;
 int mii_tick (TYPE_2__*) ;

__attribute__((used)) static void
mge_tick(void *msc)
{
 struct mge_softc *sc = msc;

 KASSERT(sc->phy_attached == 1, ("mge_tick while PHY not attached"));

 MGE_GLOBAL_LOCK(sc);


 mge_watchdog(sc);

 mii_tick(sc->mii);


 if(sc->mge_media_status != sc->mii->mii_media.ifm_media)
  mge_ifmedia_upd(sc->ifp);

 MGE_GLOBAL_UNLOCK(sc);


 callout_reset(&sc->wd_callout, hz, mge_tick, sc);

 return;
}
