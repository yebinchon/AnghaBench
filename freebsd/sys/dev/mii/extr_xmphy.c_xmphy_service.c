
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_softc {int mii_ticks; int mii_anegticks; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;


 int BMSR_LINK ;
 int EINVAL ;


 int IFM_FDX ;
 int const IFM_SUBTYPE (int) ;
 int MII_BMSR ;



 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_RESET (struct mii_softc*) ;
 int PHY_WRITE (struct mii_softc*,int ,int ) ;
 int XMPHY_ANAR_FDX ;
 int XMPHY_ANAR_HDX ;
 int XMPHY_BMCR_AUTOEN ;
 int XMPHY_BMCR_FDX ;
 int XMPHY_MII_ANAR ;
 int XMPHY_MII_BMCR ;
 int mii_phy_update (struct mii_softc*,int) ;
 int xmphy_mii_phy_auto (struct mii_softc*) ;
 int xmphy_status (struct mii_softc*) ;

__attribute__((used)) static int
xmphy_service(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
 int reg;

 switch (cmd) {
 case 129:
  break;

 case 130:
  switch (IFM_SUBTYPE(ife->ifm_media)) {
  case 131:







   (void)xmphy_mii_phy_auto(sc);
   break;
  case 132:
   PHY_RESET(sc);
   if ((ife->ifm_media & IFM_FDX) != 0) {
    PHY_WRITE(sc, XMPHY_MII_ANAR, XMPHY_ANAR_FDX);
    PHY_WRITE(sc, XMPHY_MII_BMCR, XMPHY_BMCR_FDX);
   } else {
    PHY_WRITE(sc, XMPHY_MII_ANAR, XMPHY_ANAR_HDX);
    PHY_WRITE(sc, XMPHY_MII_BMCR, 0);
   }
   break;
  default:
   return (EINVAL);
  }
  break;

 case 128:



  if (IFM_SUBTYPE(ife->ifm_media) != 131)
   break;






  reg = PHY_READ(sc, MII_BMSR) | PHY_READ(sc, MII_BMSR);
  if (reg & BMSR_LINK)
   break;


  if (sc->mii_ticks <= sc->mii_anegticks)
   break;

  sc->mii_ticks = 0;

  PHY_RESET(sc);
  xmphy_mii_phy_auto(sc);
  return (0);
 }


 xmphy_status(sc);


 mii_phy_update(sc, cmd);
 return (0);
}
