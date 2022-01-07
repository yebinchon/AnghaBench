
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct fxp_softc {int miibus; } ;
typedef int if_t ;


 int FXP_LOCK (struct fxp_softc*) ;
 int FXP_UNLOCK (struct fxp_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 struct fxp_softc* if_getsoftc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
fxp_ifmedia_sts(if_t ifp, struct ifmediareq *ifmr)
{
 struct fxp_softc *sc = if_getsoftc(ifp);
 struct mii_data *mii;

 mii = device_get_softc(sc->miibus);
 FXP_LOCK(sc);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 FXP_UNLOCK(sc);
}
