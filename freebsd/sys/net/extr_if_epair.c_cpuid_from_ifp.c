
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ifnet {struct epair_softc* if_softc; } ;
struct epair_softc {int cpuid; } ;



__attribute__((used)) static u_int
cpuid_from_ifp(struct ifnet *ifp)
{
 struct epair_softc *sc;

 if (ifp == ((void*)0))
  return (0);
 sc = ifp->if_softc;

 return (sc->cpuid);
}
