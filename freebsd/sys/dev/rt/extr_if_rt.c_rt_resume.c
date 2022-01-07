
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_softc {struct ifnet* ifp; } ;
struct ifnet {int if_flags; } ;
typedef int device_t ;


 int IFF_UP ;
 int RT_DEBUG_ANY ;
 int RT_DPRINTF (struct rt_softc*,int ,char*) ;
 struct rt_softc* device_get_softc (int ) ;
 int rt_init (struct rt_softc*) ;

__attribute__((used)) static int
rt_resume(device_t dev)
{
 struct rt_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);
 ifp = sc->ifp;

 RT_DPRINTF(sc, RT_DEBUG_ANY, "resuming\n");

 if (ifp->if_flags & IFF_UP)
  rt_init(sc);

 return (0);
}
