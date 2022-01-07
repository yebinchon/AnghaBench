
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc_softc {int sc_ue; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct smsc_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;


 int SMSC_LOCK (struct smsc_softc*) ;
 int SMSC_UNLOCK (struct smsc_softc*) ;
 int mii_pollstat (struct mii_data*) ;
 struct mii_data* uether_getmii (int *) ;

__attribute__((used)) static void
smsc_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct smsc_softc *sc = ifp->if_softc;
 struct mii_data *mii = uether_getmii(&sc->sc_ue);

 SMSC_LOCK(sc);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 SMSC_UNLOCK(sc);
}
