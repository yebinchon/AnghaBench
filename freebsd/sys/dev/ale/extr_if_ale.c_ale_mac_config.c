
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_data {int mii_media_active; } ;
struct ale_softc {int ale_miibus; } ;


 int ALE_LOCK_ASSERT (struct ale_softc*) ;
 int ALE_MAC_CFG ;
 int CSR_READ_4 (struct ale_softc*,int ) ;
 int CSR_WRITE_4 (struct ale_softc*,int ,int) ;



 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 int IFM_SUBTYPE (int ) ;
 int MAC_CFG_FULL_DUPLEX ;
 int MAC_CFG_RX_FC ;
 int MAC_CFG_SPEED_1000 ;
 int MAC_CFG_SPEED_10_100 ;
 int MAC_CFG_SPEED_MASK ;
 int MAC_CFG_TX_FC ;
 struct mii_data* device_get_softc (int ) ;

__attribute__((used)) static void
ale_mac_config(struct ale_softc *sc)
{
 struct mii_data *mii;
 uint32_t reg;

 ALE_LOCK_ASSERT(sc);

 mii = device_get_softc(sc->ale_miibus);
 reg = CSR_READ_4(sc, ALE_MAC_CFG);
 reg &= ~(MAC_CFG_FULL_DUPLEX | MAC_CFG_TX_FC | MAC_CFG_RX_FC |
     MAC_CFG_SPEED_MASK);

 switch (IFM_SUBTYPE(mii->mii_media_active)) {
 case 128:
 case 129:
  reg |= MAC_CFG_SPEED_10_100;
  break;
 case 130:
  reg |= MAC_CFG_SPEED_1000;
  break;
 }
 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0) {
  reg |= MAC_CFG_FULL_DUPLEX;
  if ((IFM_OPTIONS(mii->mii_media_active) & IFM_ETH_TXPAUSE) != 0)
   reg |= MAC_CFG_TX_FC;
  if ((IFM_OPTIONS(mii->mii_media_active) & IFM_ETH_RXPAUSE) != 0)
   reg |= MAC_CFG_RX_FC;
 }
 CSR_WRITE_4(sc, ALE_MAC_CFG, reg);
}
