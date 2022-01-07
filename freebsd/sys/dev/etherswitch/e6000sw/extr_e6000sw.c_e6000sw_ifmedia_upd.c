
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct ifnet {int if_dunit; int * if_softc; } ;
typedef int e6000sw_softc_t ;


 int ENXIO ;
 struct mii_data* e6000sw_miiforphy (int *,int ) ;
 int mii_mediachg (struct mii_data*) ;

__attribute__((used)) static int
e6000sw_ifmedia_upd(struct ifnet *ifp)
{
 e6000sw_softc_t *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 mii = e6000sw_miiforphy(sc, ifp->if_dunit);
 if (mii == ((void*)0))
  return (ENXIO);
 mii_mediachg(mii);

 return (0);
}
