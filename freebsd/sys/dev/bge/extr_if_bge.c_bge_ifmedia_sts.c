
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct bge_softc {int bge_flags; int bge_miibus; } ;
typedef int if_t ;


 int BGE_FLAG_TBI ;
 int BGE_LOCK (struct bge_softc*) ;
 int BGE_MACMODE_HALF_DUPLEX ;
 int BGE_MACSTAT_TBI_PCS_SYNCHED ;
 int BGE_MAC_MODE ;
 int BGE_MAC_STS ;
 int BGE_UNLOCK (struct bge_softc*) ;
 int CSR_READ_4 (struct bge_softc*,int ) ;
 int IFF_UP ;
 int IFM_1000_SX ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_HDX ;
 int IFM_NONE ;
 struct mii_data* device_get_softc (int ) ;
 int if_getflags (int ) ;
 struct bge_softc* if_getsoftc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
bge_ifmedia_sts(if_t ifp, struct ifmediareq *ifmr)
{
 struct bge_softc *sc = if_getsoftc(ifp);
 struct mii_data *mii;

 BGE_LOCK(sc);

 if ((if_getflags(ifp) & IFF_UP) == 0) {
  BGE_UNLOCK(sc);
  return;
 }
 if (sc->bge_flags & BGE_FLAG_TBI) {
  ifmr->ifm_status = IFM_AVALID;
  ifmr->ifm_active = IFM_ETHER;
  if (CSR_READ_4(sc, BGE_MAC_STS) &
      BGE_MACSTAT_TBI_PCS_SYNCHED)
   ifmr->ifm_status |= IFM_ACTIVE;
  else {
   ifmr->ifm_active |= IFM_NONE;
   BGE_UNLOCK(sc);
   return;
  }
  ifmr->ifm_active |= IFM_1000_SX;
  if (CSR_READ_4(sc, BGE_MAC_MODE) & BGE_MACMODE_HALF_DUPLEX)
   ifmr->ifm_active |= IFM_HDX;
  else
   ifmr->ifm_active |= IFM_FDX;
  BGE_UNLOCK(sc);
  return;
 }

 mii = device_get_softc(sc->bge_miibus);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;

 BGE_UNLOCK(sc);
}
