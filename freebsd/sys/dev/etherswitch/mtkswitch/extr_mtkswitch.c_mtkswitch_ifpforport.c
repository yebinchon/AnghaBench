
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtkswitch_softc {struct ifnet** ifp; } ;
struct ifnet {int dummy; } ;


 int MTKSWITCH_MAX_PHYS ;
 int mtkswitch_phyforport (int) ;

__attribute__((used)) static inline struct ifnet *
mtkswitch_ifpforport(struct mtkswitch_softc *sc, int port)
{
 int phy = mtkswitch_phyforport(port);

 if (phy < 0 || phy >= MTKSWITCH_MAX_PHYS)
  return (((void*)0));

 return (sc->ifp[phy]);
}
