
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mii_softc {int mii_flags; } ;


 int ANAR_PAUSE_ASYM ;
 int ANAR_PAUSE_SYM ;


 int ANLPAR_PAUSE_SYM ;
 int ANLPAR_PAUSE_TOWARDS ;
 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_FLOW ;
 int MIIF_DOPAUSE ;
 int MIIF_IS_1000X ;
 int MII_ANAR ;
 int MII_ANLPAR ;
 int PHY_READ (struct mii_softc*,int ) ;

u_int
mii_phy_flowstatus(struct mii_softc *sc)
{
 int anar, anlpar;

 if ((sc->mii_flags & MIIF_DOPAUSE) == 0)
  return (0);

 anar = PHY_READ(sc, MII_ANAR);
 anlpar = PHY_READ(sc, MII_ANLPAR);





 if ((sc->mii_flags & MIIF_IS_1000X) != 0) {
  anar <<= 3;
  anlpar <<= 3;
 }

 if ((anar & ANAR_PAUSE_SYM) != 0 && (anlpar & ANLPAR_PAUSE_SYM) != 0)
  return (IFM_FLOW | IFM_ETH_TXPAUSE | IFM_ETH_RXPAUSE);

 if ((anar & ANAR_PAUSE_SYM) == 0) {
  if ((anar & ANAR_PAUSE_ASYM) != 0 &&
      (anlpar & ANLPAR_PAUSE_TOWARDS) != 0)
   return (IFM_FLOW | IFM_ETH_TXPAUSE);
  else
   return (0);
 }

 if ((anar & ANAR_PAUSE_ASYM) == 0) {
  if ((anlpar & ANLPAR_PAUSE_SYM) != 0)
   return (IFM_FLOW | IFM_ETH_TXPAUSE | IFM_ETH_RXPAUSE);
  else
   return (0);
 }

 switch ((anlpar & ANLPAR_PAUSE_TOWARDS)) {
 case 128:
  return (0);
 case 129:
  return (IFM_FLOW | IFM_ETH_RXPAUSE);
 default:
  return (IFM_FLOW | IFM_ETH_RXPAUSE | IFM_ETH_TXPAUSE);
 }

}
