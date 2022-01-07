
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct adm6996fc_softc {int numports; struct ifnet** ifp; } ;



__attribute__((used)) static inline struct ifnet *
adm6996fc_ifpforport(struct adm6996fc_softc *sc, int port)
{

 if (port < 0 || port > sc->numports)
  return (((void*)0));
 return (sc->ifp[port]);
}
