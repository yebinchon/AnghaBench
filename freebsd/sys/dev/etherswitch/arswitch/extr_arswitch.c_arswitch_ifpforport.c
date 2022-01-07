
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct arswitch_softc {int numphys; struct ifnet** ifp; } ;



__attribute__((used)) static inline struct ifnet *
arswitch_ifpforport(struct arswitch_softc *sc, int port)
{
 int phy = port-1;

 if (phy < 0 || phy >= sc->numphys)
  return (((void*)0));
 return (sc->ifp[phy]);
}
