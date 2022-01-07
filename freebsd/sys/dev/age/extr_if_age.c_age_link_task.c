
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
struct age_softc {int age_flags; struct ifnet* age_ifp; int age_miibus; } ;


 int AGE_DMA_CFG ;
 int AGE_FLAG_LINK ;
 int AGE_LOCK (struct age_softc*) ;
 int AGE_MAC_CFG ;
 int AGE_UNLOCK (struct age_softc*) ;
 int CSR_READ_4 (struct age_softc*,int ) ;
 int CSR_WRITE_4 (struct age_softc*,int ,int) ;
 int DMA_CFG_RD_ENB ;
 int DMA_CFG_WR_ENB ;
 int IFF_DRV_RUNNING ;



 int IFM_AVALID ;
 int IFM_SUBTYPE (int ) ;
 int MAC_CFG_RX_ENB ;
 int MAC_CFG_TX_ENB ;
 int age_mac_config (struct age_softc*) ;
 int age_stop_rxmac (struct age_softc*) ;
 int age_stop_txmac (struct age_softc*) ;
 struct mii_data* device_get_softc (int ) ;

__attribute__((used)) static void
age_link_task(void *arg, int pending)
{
 struct age_softc *sc;
 struct mii_data *mii;
 struct ifnet *ifp;
 uint32_t reg;

 sc = (struct age_softc *)arg;

 AGE_LOCK(sc);
 mii = device_get_softc(sc->age_miibus);
 ifp = sc->age_ifp;
 if (mii == ((void*)0) || ifp == ((void*)0) ||
     (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
  AGE_UNLOCK(sc);
  return;
 }

 sc->age_flags &= ~AGE_FLAG_LINK;
 if ((mii->mii_media_status & IFM_AVALID) != 0) {
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 128:
  case 129:
  case 130:
   sc->age_flags |= AGE_FLAG_LINK;
   break;
  default:
   break;
  }
 }


 age_stop_rxmac(sc);
 age_stop_txmac(sc);


 if ((sc->age_flags & AGE_FLAG_LINK) != 0) {
  age_mac_config(sc);
  reg = CSR_READ_4(sc, AGE_MAC_CFG);

  CSR_WRITE_4(sc, AGE_DMA_CFG, CSR_READ_4(sc, AGE_DMA_CFG) |
      DMA_CFG_RD_ENB | DMA_CFG_WR_ENB);
  reg |= MAC_CFG_TX_ENB | MAC_CFG_RX_ENB;
  CSR_WRITE_4(sc, AGE_MAC_CFG, reg);
 }

 AGE_UNLOCK(sc);
}
