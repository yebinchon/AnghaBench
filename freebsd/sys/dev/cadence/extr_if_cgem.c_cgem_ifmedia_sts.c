
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct cgem_softc {int miibus; } ;
typedef int if_t ;


 int CGEM_LOCK (struct cgem_softc*) ;
 int CGEM_UNLOCK (struct cgem_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 scalar_t__ if_getsoftc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
cgem_ifmedia_sts(if_t ifp, struct ifmediareq *ifmr)
{
 struct cgem_softc *sc = (struct cgem_softc *) if_getsoftc(ifp);
 struct mii_data *mii;

 mii = device_get_softc(sc->miibus);
 CGEM_LOCK(sc);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 CGEM_UNLOCK(sc);
}
