
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int mii_flags; struct mii_data* mii_pdata; } ;
struct mii_data {scalar_t__ mii_media_active; int mii_media_status; } ;


 int E1000_1GSR ;
 int E1000_1GSR_MS_CONFIG_RES ;
 int E1000_CR ;
 int E1000_CR_AUTO_NEG_ENABLE ;
 int E1000_CR_LOOPBACK ;
 int E1000_SR ;
 int E1000_SR_LINK_STATUS ;
 int E1000_SSR ;



 int E1000_SSR_DUPLEX ;
 int E1000_SSR_SPD_DPLX_RESOLVED ;
 int E1000_SSR_SPEED ;
 scalar_t__ IFM_1000_SX ;
 scalar_t__ IFM_1000_T ;
 scalar_t__ IFM_100_TX ;
 scalar_t__ IFM_10_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 scalar_t__ IFM_ETHER ;
 scalar_t__ IFM_ETH_MASTER ;
 scalar_t__ IFM_FDX ;
 scalar_t__ IFM_HDX ;
 scalar_t__ IFM_LOOP ;
 scalar_t__ IFM_NONE ;
 scalar_t__ IFM_SUBTYPE (scalar_t__) ;
 int MIIF_HAVEFIBER ;
 int PHY_READ (struct mii_softc*,int ) ;
 scalar_t__ mii_phy_flowstatus (struct mii_softc*) ;

__attribute__((used)) static void
e1000phy_status(struct mii_softc *sc)
{
 struct mii_data *mii = sc->mii_pdata;
 int bmcr, bmsr, ssr;

 mii->mii_media_status = IFM_AVALID;
 mii->mii_media_active = IFM_ETHER;

 bmsr = PHY_READ(sc, E1000_SR) | PHY_READ(sc, E1000_SR);
 bmcr = PHY_READ(sc, E1000_CR);
 ssr = PHY_READ(sc, E1000_SSR);

 if (bmsr & E1000_SR_LINK_STATUS)
  mii->mii_media_status |= IFM_ACTIVE;

 if (bmcr & E1000_CR_LOOPBACK)
  mii->mii_media_active |= IFM_LOOP;

 if ((bmcr & E1000_CR_AUTO_NEG_ENABLE) != 0 &&
     (ssr & E1000_SSR_SPD_DPLX_RESOLVED) == 0) {

  mii->mii_media_active |= IFM_NONE;
  return;
 }

 if ((sc->mii_flags & MIIF_HAVEFIBER) == 0) {
  switch (ssr & E1000_SSR_SPEED) {
  case 130:
   mii->mii_media_active |= IFM_1000_T;
   break;
  case 129:
   mii->mii_media_active |= IFM_100_TX;
   break;
  case 128:
   mii->mii_media_active |= IFM_10_T;
   break;
  default:
   mii->mii_media_active |= IFM_NONE;
   return;
  }
 } else {




  mii->mii_media_active |= IFM_1000_SX;
 }

 if (ssr & E1000_SSR_DUPLEX) {
  mii->mii_media_active |= IFM_FDX;
  if ((sc->mii_flags & MIIF_HAVEFIBER) == 0)
   mii->mii_media_active |= mii_phy_flowstatus(sc);
 } else
  mii->mii_media_active |= IFM_HDX;

 if (IFM_SUBTYPE(mii->mii_media_active) == IFM_1000_T) {
  if (((PHY_READ(sc, E1000_1GSR) | PHY_READ(sc, E1000_1GSR)) &
      E1000_1GSR_MS_CONFIG_RES) != 0)
   mii->mii_media_active |= IFM_ETH_MASTER;
 }
}
