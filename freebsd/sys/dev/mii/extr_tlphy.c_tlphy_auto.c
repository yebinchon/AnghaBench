
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlphy_softc {int sc_need_acomp; int sc_mii; } ;




 int MII_BMCR ;
 int PHY_WRITE (int *,int ,int ) ;
 int mii_phy_auto (int *) ;
 int tlphy_acomp (struct tlphy_softc*) ;

__attribute__((used)) static int
tlphy_auto(struct tlphy_softc *sc)
{
 int error;

 switch ((error = mii_phy_auto(&sc->sc_mii))) {
 case 129:




  PHY_WRITE(&sc->sc_mii, MII_BMCR, 0);
  break;

 case 128:

  sc->sc_need_acomp = 1;
  break;

 default:
  tlphy_acomp(sc);
 }

 return (error);
}
