
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
struct ale_softc {int ale_flags; struct ifnet* ale_ifp; int ale_miibus; } ;
typedef int device_t ;


 int ALE_FLAG_FASTETHER ;
 int ALE_FLAG_LINK ;
 int ALE_MAC_CFG ;
 int CSR_READ_4 (struct ale_softc*,int ) ;
 int CSR_WRITE_4 (struct ale_softc*,int ,int) ;
 int IFF_DRV_RUNNING ;



 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_SUBTYPE (int ) ;
 int MAC_CFG_RX_ENB ;
 int MAC_CFG_TX_ENB ;
 int ale_mac_config (struct ale_softc*) ;
 int ale_stop_mac (struct ale_softc*) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static void
ale_miibus_statchg(device_t dev)
{
 struct ale_softc *sc;
 struct mii_data *mii;
 struct ifnet *ifp;
 uint32_t reg;

 sc = device_get_softc(dev);
 mii = device_get_softc(sc->ale_miibus);
 ifp = sc->ale_ifp;
 if (mii == ((void*)0) || ifp == ((void*)0) ||
     (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return;

 sc->ale_flags &= ~ALE_FLAG_LINK;
 if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
     (IFM_ACTIVE | IFM_AVALID)) {
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 128:
  case 129:
   sc->ale_flags |= ALE_FLAG_LINK;
   break;
  case 130:
   if ((sc->ale_flags & ALE_FLAG_FASTETHER) == 0)
    sc->ale_flags |= ALE_FLAG_LINK;
   break;
  default:
   break;
  }
 }


 ale_stop_mac(sc);


 if ((sc->ale_flags & ALE_FLAG_LINK) != 0) {
  ale_mac_config(sc);

  reg = CSR_READ_4(sc, ALE_MAC_CFG);
  reg |= MAC_CFG_TX_ENB | MAC_CFG_RX_ENB;
  CSR_WRITE_4(sc, ALE_MAC_CFG, reg);
 }
}
