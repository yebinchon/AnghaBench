
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct ifnet {int if_dunit; struct arswitch_softc* if_softc; } ;
struct arswitch_softc {int dummy; } ;


 int ENXIO ;
 struct mii_data* arswitch_miiforport (struct arswitch_softc*,int ) ;
 int mii_mediachg (struct mii_data*) ;

__attribute__((used)) static int
arswitch_ifmedia_upd(struct ifnet *ifp)
{
 struct arswitch_softc *sc = ifp->if_softc;
 struct mii_data *mii = arswitch_miiforport(sc, ifp->if_dunit);

 if (mii == ((void*)0))
  return (ENXIO);
 mii_mediachg(mii);
 return (0);
}
