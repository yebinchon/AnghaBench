
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ste_softc {int ste_flags; struct ifnet* ste_ifp; int ste_miibus; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
typedef int device_t ;


 int CSR_READ_2 (struct ste_softc*,int ) ;
 int CSR_WRITE_2 (struct ste_softc*,int ,int) ;
 int IFF_DRV_RUNNING ;




 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 int IFM_SUBTYPE (int ) ;
 int STE_FLAG_LINK ;
 int STE_MACCTL0 ;
 int STE_MACCTL0_FLOWCTL_ENABLE ;
 int STE_MACCTL0_FULLDUPLEX ;
 void* device_get_softc (int ) ;

__attribute__((used)) static void
ste_miibus_statchg(device_t dev)
{
 struct ste_softc *sc;
 struct mii_data *mii;
 struct ifnet *ifp;
 uint16_t cfg;

 sc = device_get_softc(dev);

 mii = device_get_softc(sc->ste_miibus);
 ifp = sc->ste_ifp;
 if (mii == ((void*)0) || ifp == ((void*)0) ||
     (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return;

 sc->ste_flags &= ~STE_FLAG_LINK;
 if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
     (IFM_ACTIVE | IFM_AVALID)) {
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 128:
  case 129:
  case 131:
  case 130:
   sc->ste_flags |= STE_FLAG_LINK;
  default:
   break;
  }
 }


 if ((sc->ste_flags & STE_FLAG_LINK) != 0) {
  cfg = CSR_READ_2(sc, STE_MACCTL0);
  cfg &= ~(STE_MACCTL0_FLOWCTL_ENABLE | STE_MACCTL0_FULLDUPLEX);
  if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0) {
   cfg |= STE_MACCTL0_FULLDUPLEX;
  }
  CSR_WRITE_2(sc, STE_MACCTL0, cfg);
 }
}
