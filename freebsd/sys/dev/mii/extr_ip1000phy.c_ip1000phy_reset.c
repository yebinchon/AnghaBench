
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_softc {int mii_flags; } ;


 int IP1000PHY_BMCR_AUTOEN ;
 int IP1000PHY_BMCR_FDX ;
 int IP1000PHY_MII_BMCR ;
 int MIIF_PHYPRIV0 ;
 int MII_BMCR ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int ip1000phy_load_dspcode (struct mii_softc*) ;
 int mii_phy_reset (struct mii_softc*) ;

__attribute__((used)) static void
ip1000phy_reset(struct mii_softc *sc)
{
 uint32_t reg;

 mii_phy_reset(sc);


 reg = PHY_READ(sc, IP1000PHY_MII_BMCR);
 reg &= ~(IP1000PHY_BMCR_AUTOEN | IP1000PHY_BMCR_FDX);
 PHY_WRITE(sc, MII_BMCR, reg);

 if ((sc->mii_flags & MIIF_PHYPRIV0) != 0)
  ip1000phy_load_dspcode(sc);
}
