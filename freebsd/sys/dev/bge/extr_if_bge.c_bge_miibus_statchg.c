
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct bge_softc {int bge_link; int bge_asicrev; int bge_miibus; int bge_ifp; } ;
typedef int device_t ;


 int BGE_ASICREV_BCM5906 ;
 int BGE_MACMODE_HALF_DUPLEX ;
 int BGE_MACMODE_PORTMODE ;
 int BGE_MAC_MODE ;
 int BGE_PORTMODE_GMII ;
 int BGE_PORTMODE_MII ;
 int BGE_RXMODE_FLOWCTL_ENABLE ;
 int BGE_RX_MODE ;
 int BGE_TXMODE_FLOWCTL_ENABLE ;
 int BGE_TX_MODE ;
 int CSR_READ_4 (struct bge_softc*,int ) ;
 int CSR_WRITE_4 (struct bge_softc*,int ,int) ;
 int DELAY (int) ;
 int IFF_DRV_RUNNING ;





 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 int const IFM_SUBTYPE (int ) ;
 void* device_get_softc (int ) ;
 int if_getdrvflags (int ) ;

__attribute__((used)) static void
bge_miibus_statchg(device_t dev)
{
 struct bge_softc *sc;
 struct mii_data *mii;
 uint32_t mac_mode, rx_mode, tx_mode;

 sc = device_get_softc(dev);
 if ((if_getdrvflags(sc->bge_ifp) & IFF_DRV_RUNNING) == 0)
  return;
 mii = device_get_softc(sc->bge_miibus);

 if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
     (IFM_ACTIVE | IFM_AVALID)) {
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 129:
  case 130:
   sc->bge_link = 1;
   break;
  case 131:
  case 132:
  case 128:
   if (sc->bge_asicrev != BGE_ASICREV_BCM5906)
    sc->bge_link = 1;
   else
    sc->bge_link = 0;
   break;
  default:
   sc->bge_link = 0;
   break;
  }
 } else
  sc->bge_link = 0;
 if (sc->bge_link == 0)
  return;
 mac_mode = CSR_READ_4(sc, BGE_MAC_MODE) &
     ~(BGE_MACMODE_PORTMODE | BGE_MACMODE_HALF_DUPLEX);
 tx_mode = CSR_READ_4(sc, BGE_TX_MODE);
 rx_mode = CSR_READ_4(sc, BGE_RX_MODE);

 if (IFM_SUBTYPE(mii->mii_media_active) == 131 ||
     IFM_SUBTYPE(mii->mii_media_active) == 132)
  mac_mode |= BGE_PORTMODE_GMII;
 else
  mac_mode |= BGE_PORTMODE_MII;


 tx_mode &= ~BGE_TXMODE_FLOWCTL_ENABLE;
 rx_mode &= ~BGE_RXMODE_FLOWCTL_ENABLE;
 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0) {
  if ((IFM_OPTIONS(mii->mii_media_active) & IFM_ETH_TXPAUSE) != 0)
   tx_mode |= BGE_TXMODE_FLOWCTL_ENABLE;
  if ((IFM_OPTIONS(mii->mii_media_active) & IFM_ETH_RXPAUSE) != 0)
   rx_mode |= BGE_RXMODE_FLOWCTL_ENABLE;
 } else
  mac_mode |= BGE_MACMODE_HALF_DUPLEX;

 CSR_WRITE_4(sc, BGE_MAC_MODE, mac_mode);
 DELAY(40);
 CSR_WRITE_4(sc, BGE_TX_MODE, tx_mode);
 CSR_WRITE_4(sc, BGE_RX_MODE, rx_mode);
}
