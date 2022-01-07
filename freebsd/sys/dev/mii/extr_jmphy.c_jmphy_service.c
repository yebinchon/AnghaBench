
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_softc {int mii_ticks; int mii_anegticks; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;


 int EINVAL ;
 int EJUSTRETURN ;
 int IFM_AUTO ;
 int IFM_SUBTYPE (int ) ;
 int JMPHY_SSR ;
 int JMPHY_SSR_LINK_UP ;



 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_STATUS (struct mii_softc*) ;
 int jmphy_setmedia (struct mii_softc*,struct ifmedia_entry*) ;
 int mii_phy_update (struct mii_softc*,int) ;

__attribute__((used)) static int
jmphy_service(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;

 switch (cmd) {
 case 129:
  break;

 case 130:
  if (jmphy_setmedia(sc, ife) != EJUSTRETURN)
   return (EINVAL);
  break;

 case 128:



  if (IFM_SUBTYPE(ife->ifm_media) != IFM_AUTO) {
   sc->mii_ticks = 0;
   break;
  }


  if ((PHY_READ(sc, JMPHY_SSR) & JMPHY_SSR_LINK_UP) != 0) {
   sc->mii_ticks = 0;
   break;
  }


  if (sc->mii_ticks++ == 0)
   break;
  if (sc->mii_ticks <= sc->mii_anegticks)
   return (0);

  sc->mii_ticks = 0;
  (void)jmphy_setmedia(sc, ife);
  break;
 }


 PHY_STATUS(sc);


 mii_phy_update(sc, cmd);
 return (0);
}
