
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {scalar_t__ if_alloctype; int * if_addr; int if_dname; } ;
struct hn_softc {struct ifnet* hn_ifp; } ;


 int ETHER_ADDR_LEN ;
 scalar_t__ IFT_ETHER ;
 int IF_LLADDR (struct ifnet const*) ;
 scalar_t__ bcmp (int ,int ,int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bool
hn_ismyvf(const struct hn_softc *sc, const struct ifnet *ifp)
{
 const struct ifnet *hn_ifp;

 hn_ifp = sc->hn_ifp;

 if (ifp == hn_ifp)
  return (0);

 if (ifp->if_alloctype != IFT_ETHER)
  return (0);


 if (strcmp(ifp->if_dname, "lagg") == 0 ||
     strcmp(ifp->if_dname, "vlan") == 0)
  return (0);





 if (ifp->if_addr == ((void*)0) || hn_ifp->if_addr == ((void*)0))
  return (0);

 if (bcmp(IF_LLADDR(ifp), IF_LLADDR(hn_ifp), ETHER_ADDR_LEN) != 0)
  return (0);

 return (1);
}
