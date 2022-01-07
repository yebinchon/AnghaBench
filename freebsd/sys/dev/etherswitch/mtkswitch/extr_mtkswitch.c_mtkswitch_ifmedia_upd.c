
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtkswitch_softc {int dummy; } ;
struct mii_data {int dummy; } ;
struct ifnet {int if_dunit; struct mtkswitch_softc* if_softc; } ;


 int ENXIO ;
 int mii_mediachg (struct mii_data*) ;
 struct mii_data* mtkswitch_miiforport (struct mtkswitch_softc*,int ) ;

__attribute__((used)) static int
mtkswitch_ifmedia_upd(struct ifnet *ifp)
{
 struct mtkswitch_softc *sc = ifp->if_softc;
 struct mii_data *mii = mtkswitch_miiforport(sc, ifp->if_dunit);

 if (mii == ((void*)0))
  return (ENXIO);
 mii_mediachg(mii);
 return (0);
}
