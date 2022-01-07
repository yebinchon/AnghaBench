
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mii_data {int mii_media_active; } ;
struct alc_softc {int alc_flags; TYPE_1__* alc_ident; int alc_miibus; } ;
struct TYPE_2__ {scalar_t__ deviceid; } ;


 int ALC_FLAG_AR816X_FAMILY ;
 int ALC_LOCK_ASSERT (struct alc_softc*) ;
 int ALC_MAC_CFG ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int) ;
 scalar_t__ DEVICEID_ATHEROS_AR8151 ;
 scalar_t__ DEVICEID_ATHEROS_AR8151_V2 ;
 scalar_t__ DEVICEID_ATHEROS_AR8152_B2 ;



 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 int IFM_SUBTYPE (int ) ;
 int MAC_CFG_FULL_DUPLEX ;
 int MAC_CFG_HASH_ALG_CRC32 ;
 int MAC_CFG_RX_FC ;
 int MAC_CFG_SPEED_1000 ;
 int MAC_CFG_SPEED_10_100 ;
 int MAC_CFG_SPEED_MASK ;
 int MAC_CFG_SPEED_MODE_SW ;
 int MAC_CFG_TX_FC ;
 struct mii_data* device_get_softc (int ) ;

__attribute__((used)) static void
alc_mac_config(struct alc_softc *sc)
{
 struct mii_data *mii;
 uint32_t reg;

 ALC_LOCK_ASSERT(sc);

 mii = device_get_softc(sc->alc_miibus);
 reg = CSR_READ_4(sc, ALC_MAC_CFG);
 reg &= ~(MAC_CFG_FULL_DUPLEX | MAC_CFG_TX_FC | MAC_CFG_RX_FC |
     MAC_CFG_SPEED_MASK);
 if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) != 0 ||
     sc->alc_ident->deviceid == DEVICEID_ATHEROS_AR8151 ||
     sc->alc_ident->deviceid == DEVICEID_ATHEROS_AR8151_V2 ||
     sc->alc_ident->deviceid == DEVICEID_ATHEROS_AR8152_B2)
  reg |= MAC_CFG_HASH_ALG_CRC32 | MAC_CFG_SPEED_MODE_SW;

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
 CSR_WRITE_4(sc, ALC_MAC_CFG, reg);
}
