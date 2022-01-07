
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct bfe_softc {TYPE_1__* sc_mii; int bfe_flags; int bfe_miibus; } ;
typedef int device_t ;
struct TYPE_2__ {int mii_media_active; } ;


 int BFE_FLAG_LINK ;
 int BFE_FLOW_PAUSE_ENAB ;
 int BFE_MAC_FLOW ;
 int BFE_RXCONF ;
 int BFE_RXCONF_FLOW ;
 int BFE_TX_CTRL ;
 int BFE_TX_DUPLEX ;
 int CSR_READ_4 (struct bfe_softc*,int ) ;
 int CSR_WRITE_4 (struct bfe_softc*,int ,int ) ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETH_RXPAUSE ;
 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 int IFM_SUBTYPE (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static void
bfe_miibus_statchg(device_t dev)
{
 struct bfe_softc *sc;
 struct mii_data *mii;
 u_int32_t val, flow;

 sc = device_get_softc(dev);
 mii = device_get_softc(sc->bfe_miibus);

 sc->bfe_flags &= ~BFE_FLAG_LINK;
 if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
     (IFM_ACTIVE | IFM_AVALID)) {
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 128:
  case 129:
   sc->bfe_flags |= BFE_FLAG_LINK;
   break;
  default:
   break;
  }
 }


 val = CSR_READ_4(sc, BFE_TX_CTRL);
 val &= ~BFE_TX_DUPLEX;
 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0) {
  val |= BFE_TX_DUPLEX;
  flow = 0;
 }
 CSR_WRITE_4(sc, BFE_TX_CTRL, val);
}
