
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ukswitch_softc {int numports; struct ifnet** ifp; } ;
struct ifnet {int dummy; } ;



__attribute__((used)) static inline struct ifnet *
ukswitch_ifpforport(struct ukswitch_softc *sc, int port)
{

 if (port < 0 || port > sc->numports)
  return (((void*)0));
 return (sc->ifp[port]);
}
