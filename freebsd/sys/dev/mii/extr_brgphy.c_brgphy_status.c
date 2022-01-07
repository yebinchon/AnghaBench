
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct mii_softc {int mii_flags; struct mii_data* mii_pdata; } ;
struct mii_data {scalar_t__ mii_media_active; int mii_media_status; } ;
struct brgphy_softc {int serdes_flags; } ;


 int BRGPHY_1000STS_MSR ;
 int BRGPHY_5706S ;
 int BRGPHY_5708S ;
 int BRGPHY_5708S_BLOCK_ADDR ;
 int BRGPHY_5708S_DIG_PG0 ;
 int BRGPHY_5708S_PG0_1000X_STAT1 ;
 int BRGPHY_5708S_PG0_1000X_STAT1_FDX ;




 int BRGPHY_5708S_PG0_1000X_STAT1_SPEED_MASK ;
 int BRGPHY_5709S ;
 int BRGPHY_AUXSTS_AN_RES ;
 int BRGPHY_AUXSTS_LINK ;
 int BRGPHY_BLOCK_ADDR ;
 int BRGPHY_BLOCK_ADDR_COMBO_IEEE0 ;
 int BRGPHY_BLOCK_ADDR_GP_STATUS ;
 int BRGPHY_BMCR_AUTOEN ;
 int BRGPHY_BMCR_LOOP ;
 int BRGPHY_BMSR_ACOMP ;
 int BRGPHY_BMSR_LINK ;
 int BRGPHY_GP_STATUS_TOP_ANEG_FDX ;




 int BRGPHY_GP_STATUS_TOP_ANEG_SPEED_MASK ;
 int BRGPHY_GP_STATUS_TOP_ANEG_STATUS ;
 int BRGPHY_MII_1000STS ;
 int BRGPHY_MII_AUXSTS ;
 int BRGPHY_MII_BMCR ;
 int BRGPHY_MII_BMSR ;
 int BRGPHY_NOANWAIT ;







 int BRGPHY_SERDES_ANAR ;
 int BRGPHY_SERDES_ANAR_FDX ;
 int BRGPHY_SERDES_ANLPAR ;
 scalar_t__ IFM_1000_SX ;
 scalar_t__ IFM_1000_T ;
 scalar_t__ IFM_100_FX ;
 scalar_t__ IFM_100_T4 ;
 scalar_t__ IFM_100_TX ;
 scalar_t__ IFM_10_FL ;
 scalar_t__ IFM_10_T ;
 scalar_t__ IFM_2500_SX ;
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
 int PHY_WRITE (struct mii_softc*,int ,int ) ;
 scalar_t__ mii_phy_flowstatus (struct mii_softc*) ;

__attribute__((used)) static void
brgphy_status(struct mii_softc *sc)
{
 struct brgphy_softc *bsc = (struct brgphy_softc *)sc;
 struct mii_data *mii = sc->mii_pdata;
 int aux, bmcr, bmsr, val, xstat;
 u_int flowstat;

 mii->mii_media_status = IFM_AVALID;
 mii->mii_media_active = IFM_ETHER;

 bmsr = PHY_READ(sc, BRGPHY_MII_BMSR) | PHY_READ(sc, BRGPHY_MII_BMSR);
 bmcr = PHY_READ(sc, BRGPHY_MII_BMCR);

 if (bmcr & BRGPHY_BMCR_LOOP) {
  mii->mii_media_active |= IFM_LOOP;
 }

 if ((bmcr & BRGPHY_BMCR_AUTOEN) &&
     (bmsr & BRGPHY_BMSR_ACOMP) == 0 &&
     (bsc->serdes_flags & BRGPHY_NOANWAIT) == 0) {

  mii->mii_media_active |= IFM_NONE;
  return;
 }

 if ((sc->mii_flags & MIIF_HAVEFIBER) == 0) {




  flowstat = mii_phy_flowstatus(sc);
  xstat = PHY_READ(sc, BRGPHY_MII_1000STS);
  aux = PHY_READ(sc, BRGPHY_MII_AUXSTS);


  if (aux & BRGPHY_AUXSTS_LINK) {
   mii->mii_media_status |= IFM_ACTIVE;
   switch (aux & BRGPHY_AUXSTS_AN_RES) {
   case 134:
    mii->mii_media_active |= IFM_1000_T | IFM_FDX; break;
   case 133:
    mii->mii_media_active |= IFM_1000_T | IFM_HDX; break;
   case 132:
    mii->mii_media_active |= IFM_100_TX | IFM_FDX; break;
   case 130:
    mii->mii_media_active |= IFM_100_T4; break;
   case 131:
    mii->mii_media_active |= IFM_100_TX | IFM_HDX; break;
   case 129:
    mii->mii_media_active |= IFM_10_T | IFM_FDX; break;
   case 128:
    mii->mii_media_active |= IFM_10_T | IFM_HDX; break;
   default:
    mii->mii_media_active |= IFM_NONE; break;
   }

   if ((mii->mii_media_active & IFM_FDX) != 0)
    mii->mii_media_active |= flowstat;

   if (IFM_SUBTYPE(mii->mii_media_active) == IFM_1000_T &&
       (xstat & BRGPHY_1000STS_MSR) != 0)
    mii->mii_media_active |= IFM_ETH_MASTER;
  }
 } else {


  if (bmsr & BRGPHY_BMSR_LINK) {
   mii->mii_media_status |= IFM_ACTIVE;
  }


  if (bsc->serdes_flags & BRGPHY_5706S) {
   mii->mii_media_active |= IFM_1000_SX;


   if (bmcr & BRGPHY_BMCR_AUTOEN) {
    val = PHY_READ(sc, BRGPHY_SERDES_ANAR) & PHY_READ(sc, BRGPHY_SERDES_ANLPAR);
    if (val & BRGPHY_SERDES_ANAR_FDX)
     mii->mii_media_active |= IFM_FDX;
    else
     mii->mii_media_active |= IFM_HDX;
   }
  } else if (bsc->serdes_flags & BRGPHY_5708S) {
   PHY_WRITE(sc, BRGPHY_5708S_BLOCK_ADDR, BRGPHY_5708S_DIG_PG0);
   xstat = PHY_READ(sc, BRGPHY_5708S_PG0_1000X_STAT1);


   switch (xstat & BRGPHY_5708S_PG0_1000X_STAT1_SPEED_MASK) {
   case 142:
    mii->mii_media_active |= IFM_10_FL; break;
   case 141:
    mii->mii_media_active |= IFM_100_FX; break;
   case 140:
    mii->mii_media_active |= IFM_1000_SX; break;
   case 139:
    mii->mii_media_active |= IFM_2500_SX; break;
   }


   if (xstat & BRGPHY_5708S_PG0_1000X_STAT1_FDX)
    mii->mii_media_active |= IFM_FDX;
   else
    mii->mii_media_active |= IFM_HDX;
  } else if (bsc->serdes_flags & BRGPHY_5709S) {

   PHY_WRITE(sc, BRGPHY_BLOCK_ADDR, BRGPHY_BLOCK_ADDR_GP_STATUS);
   xstat = PHY_READ(sc, BRGPHY_GP_STATUS_TOP_ANEG_STATUS);


   PHY_WRITE(sc, BRGPHY_BLOCK_ADDR, BRGPHY_BLOCK_ADDR_COMBO_IEEE0);


   switch (xstat & BRGPHY_GP_STATUS_TOP_ANEG_SPEED_MASK) {
    case 138:
     mii->mii_media_active |= IFM_10_FL; break;
    case 137:
     mii->mii_media_active |= IFM_100_FX; break;
    case 136:
     mii->mii_media_active |= IFM_1000_SX; break;
    case 135:
     mii->mii_media_active |= IFM_2500_SX; break;
   }


   if (xstat & BRGPHY_GP_STATUS_TOP_ANEG_FDX)
    mii->mii_media_active |= IFM_FDX;
   else
    mii->mii_media_active |= IFM_HDX;
  }
 }
}
