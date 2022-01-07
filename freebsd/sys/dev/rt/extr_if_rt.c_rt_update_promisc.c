
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_softc {int dev; } ;
struct ifnet {int if_flags; struct rt_softc* if_softc; } ;


 int IFF_PROMISC ;
 char* device_get_nameunit (int ) ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static void
rt_update_promisc(struct ifnet *ifp)
{
 struct rt_softc *sc;

 sc = ifp->if_softc;
 printf("%s: %s promiscuous mode\n",
  device_get_nameunit(sc->dev),
  (ifp->if_flags & IFF_PROMISC) ? "entering" : "leaving");
}
