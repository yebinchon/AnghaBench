
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xae_softc {int* macaddr; struct ifnet* ifp; } ;
struct ifnet {int if_flags; } ;


 int FFC_PM ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int READ4 (struct xae_softc*,int ) ;
 int WRITE4 (struct xae_softc*,int ,int) ;
 int XAE_ASSERT_LOCKED (struct xae_softc*) ;
 int XAE_FFC ;
 int XAE_UAW0 ;
 int XAE_UAW1 ;
 int if_foreach_llmaddr (struct ifnet*,int ,struct xae_softc*) ;
 int xae_write_maddr ;

__attribute__((used)) static void
xae_setup_rxfilter(struct xae_softc *sc)
{
 struct ifnet *ifp;
 uint32_t reg;

 XAE_ASSERT_LOCKED(sc);

 ifp = sc->ifp;




 if ((ifp->if_flags & (IFF_ALLMULTI | IFF_PROMISC)) != 0) {
  reg = READ4(sc, XAE_FFC);
  reg |= FFC_PM;
  WRITE4(sc, XAE_FFC, reg);
 } else {
  reg = READ4(sc, XAE_FFC);
  reg &= ~FFC_PM;
  WRITE4(sc, XAE_FFC, reg);

  if_foreach_llmaddr(ifp, xae_write_maddr, sc);
 }




 reg = sc->macaddr[0];
 reg |= (sc->macaddr[1] << 8);
 reg |= (sc->macaddr[2] << 16);
 reg |= (sc->macaddr[3] << 24);
 WRITE4(sc, XAE_UAW0, reg);

 reg = sc->macaddr[4];
 reg |= (sc->macaddr[5] << 8);
 WRITE4(sc, XAE_UAW1, reg);
}
