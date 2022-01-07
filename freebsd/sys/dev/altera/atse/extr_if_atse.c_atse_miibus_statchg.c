
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
struct atse_softc {int atse_flags; struct ifnet* atse_ifp; int atse_miibus; } ;
typedef int device_t ;


 int ATSE_FLAGS_LINK ;
 int ATSE_LOCK_ASSERT (struct atse_softc*) ;
 int BASE_CFG_COMMAND_CONFIG ;
 int BASE_CFG_COMMAND_CONFIG_ENA_10 ;
 int BASE_CFG_COMMAND_CONFIG_ETH_SPEED ;
 int BASE_CFG_COMMAND_CONFIG_HD_ENA ;
 int BASE_CFG_COMMAND_CONFIG_RX_ENA ;
 int BASE_CFG_COMMAND_CONFIG_TX_ENA ;
 int CSR_READ_4 (struct atse_softc*,int ) ;
 int CSR_WRITE_4 (struct atse_softc*,int ,int ) ;
 int IFF_DRV_RUNNING ;



 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_FDX ;
 scalar_t__ IFM_OPTIONS (int) ;
 int IFM_SUBTYPE (int) ;
 void* device_get_softc (int ) ;

void
atse_miibus_statchg(device_t dev)
{
 struct atse_softc *sc;
 struct mii_data *mii;
 struct ifnet *ifp;
 uint32_t val4;

 sc = device_get_softc(dev);
 ATSE_LOCK_ASSERT(sc);

 mii = device_get_softc(sc->atse_miibus);
 ifp = sc->atse_ifp;
 if (mii == ((void*)0) || ifp == ((void*)0) ||
     (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
  return;
 }

 val4 = CSR_READ_4(sc, BASE_CFG_COMMAND_CONFIG);


 sc->atse_flags &= ~ATSE_FLAGS_LINK;

 if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
     (IFM_ACTIVE | IFM_AVALID)) {

  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 128:
   val4 |= BASE_CFG_COMMAND_CONFIG_ENA_10;
   val4 &= ~BASE_CFG_COMMAND_CONFIG_ETH_SPEED;
   sc->atse_flags |= ATSE_FLAGS_LINK;
   break;
  case 129:
   val4 &= ~BASE_CFG_COMMAND_CONFIG_ENA_10;
   val4 &= ~BASE_CFG_COMMAND_CONFIG_ETH_SPEED;
   sc->atse_flags |= ATSE_FLAGS_LINK;
   break;
  case 130:
   val4 &= ~BASE_CFG_COMMAND_CONFIG_ENA_10;
   val4 |= BASE_CFG_COMMAND_CONFIG_ETH_SPEED;
   sc->atse_flags |= ATSE_FLAGS_LINK;
   break;
  default:
   break;
  }
 }

 if ((sc->atse_flags & ATSE_FLAGS_LINK) == 0) {

  return;
 }

 if (IFM_OPTIONS(mii->mii_media_active & IFM_FDX) != 0) {
  val4 &= ~BASE_CFG_COMMAND_CONFIG_HD_ENA;
 } else {
  val4 |= BASE_CFG_COMMAND_CONFIG_HD_ENA;
 }




 val4 |= BASE_CFG_COMMAND_CONFIG_TX_ENA;
 val4 |= BASE_CFG_COMMAND_CONFIG_RX_ENA;

 CSR_WRITE_4(sc, BASE_CFG_COMMAND_CONFIG, val4);
}
