
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366rb_softc {int * miibus; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {size_t if_dunit; struct rtl8366rb_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;


 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
rtl8366rb_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct rtl8366rb_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 mii = device_get_softc(sc->miibus[ifp->if_dunit]);

 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
}
