
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nfe_softc {int nfe_link; int nfe_ifp; int nfe_miibus; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
typedef int if_t ;
typedef int device_t ;


 int IFF_DRV_RUNNING ;



 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_SUBTYPE (int ) ;
 int NFE_READ (struct nfe_softc*,int ) ;
 int NFE_RX_CTL ;
 int NFE_RX_START ;
 int NFE_TX_CTL ;
 int NFE_TX_START ;
 int NFE_WRITE (struct nfe_softc*,int ,int ) ;
 void* device_get_softc (int ) ;
 int if_getdrvflags (int ) ;
 int nfe_mac_config (struct nfe_softc*,struct mii_data*) ;

__attribute__((used)) static void
nfe_miibus_statchg(device_t dev)
{
 struct nfe_softc *sc;
 struct mii_data *mii;
 if_t ifp;
 uint32_t rxctl, txctl;

 sc = device_get_softc(dev);

 mii = device_get_softc(sc->nfe_miibus);
 ifp = sc->nfe_ifp;

 sc->nfe_link = 0;
 if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
     (IFM_ACTIVE | IFM_AVALID)) {
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 128:
  case 129:
  case 130:
   sc->nfe_link = 1;
   break;
  default:
   break;
  }
 }

 nfe_mac_config(sc, mii);
 txctl = NFE_READ(sc, NFE_TX_CTL);
 rxctl = NFE_READ(sc, NFE_RX_CTL);
 if (sc->nfe_link != 0 && (if_getdrvflags(ifp) & IFF_DRV_RUNNING) != 0) {
  txctl |= NFE_TX_START;
  rxctl |= NFE_RX_START;
 } else {
  txctl &= ~NFE_TX_START;
  rxctl &= ~NFE_RX_START;
 }
 NFE_WRITE(sc, NFE_TX_CTL, txctl);
 NFE_WRITE(sc, NFE_RX_CTL, rxctl);
}
