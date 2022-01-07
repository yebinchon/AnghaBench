
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct mii_softc {TYPE_2__* mii_pdata; } ;
struct ifmedia_entry {int ifm_media; } ;
struct TYPE_3__ {struct ifmedia_entry* ifm_cur; } ;
struct TYPE_4__ {TYPE_1__ mii_media; } ;


 int ATPHY_SCR ;
 int ATPHY_SCR_ASSERT_CRS_ON_TX ;
 int ATPHY_SCR_AUTO_X_MODE ;
 int ATPHY_SCR_MAC_PDOWN ;
 int ATPHY_SCR_POLARITY_REVERSAL ;
 int BMCR_RESET ;
 int DELAY (int) ;
 int IFM_AUTO ;
 int MII_BMCR ;
 int PHY_READ (struct mii_softc*,int) ;
 int PHY_WRITE (struct mii_softc*,int,int) ;
 int atphy_setmedia (struct mii_softc*,int ) ;

__attribute__((used)) static void
atphy_reset(struct mii_softc *sc)
{
 struct ifmedia_entry *ife = sc->mii_pdata->mii_media.ifm_cur;
 uint32_t reg;
 int i;


 PHY_WRITE(sc, 29, 0x29);
 PHY_WRITE(sc, 30, 0);

 reg = PHY_READ(sc, ATPHY_SCR);

 reg |= ATPHY_SCR_AUTO_X_MODE;

 reg &= ~ATPHY_SCR_MAC_PDOWN;

 reg |= ATPHY_SCR_ASSERT_CRS_ON_TX;

 reg |= ATPHY_SCR_POLARITY_REVERSAL;
 PHY_WRITE(sc, ATPHY_SCR, reg);


 atphy_setmedia(sc, ife == ((void*)0) ? IFM_AUTO : ife->ifm_media);

 for (i = 0; i < 1000; i++) {
  DELAY(1);
  if ((PHY_READ(sc, MII_BMCR) & BMCR_RESET) == 0)
   break;
 }
}
