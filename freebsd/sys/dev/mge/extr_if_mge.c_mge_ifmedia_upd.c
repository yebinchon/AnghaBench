
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mge_softc {TYPE_2__* mii; int mge_media_status; scalar_t__ phy_attached; } ;
struct ifnet {int if_flags; struct mge_softc* if_softc; } ;
struct TYPE_3__ {int ifm_media; } ;
struct TYPE_4__ {TYPE_1__ mii_media; } ;


 int IFF_UP ;
 int MGE_GLOBAL_LOCK (struct mge_softc*) ;
 int MGE_GLOBAL_UNLOCK (struct mge_softc*) ;
 int mge_init_locked (struct mge_softc*) ;
 int mii_mediachg (TYPE_2__*) ;

__attribute__((used)) static int
mge_ifmedia_upd(struct ifnet *ifp)
{
 struct mge_softc *sc = ifp->if_softc;






 if (sc->phy_attached) {
  MGE_GLOBAL_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   sc->mge_media_status = sc->mii->mii_media.ifm_media;
   mii_mediachg(sc->mii);


   mge_init_locked(sc);

  }
  MGE_GLOBAL_UNLOCK(sc);
 }

 return (0);
}
