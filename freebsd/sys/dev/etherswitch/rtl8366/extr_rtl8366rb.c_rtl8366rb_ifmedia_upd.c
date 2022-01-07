
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366rb_softc {int * miibus; } ;
struct mii_data {int dummy; } ;
struct ifnet {size_t if_dunit; struct rtl8366rb_softc* if_softc; } ;


 struct mii_data* device_get_softc (int ) ;
 int mii_mediachg (struct mii_data*) ;

__attribute__((used)) static int
rtl8366rb_ifmedia_upd(struct ifnet *ifp)
{
 struct rtl8366rb_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 mii = device_get_softc(sc->miibus[ifp->if_dunit]);

 mii_mediachg(mii);
 return (0);
}
