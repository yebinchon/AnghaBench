
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_softc {struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;


 int RT_DEBUG_STATS ;
 int RT_DPRINTF (struct rt_softc*,int ,char*) ;

__attribute__((used)) static void
rt_update_stats(struct rt_softc *sc)
{
 struct ifnet *ifp;

 ifp = sc->ifp;
 RT_DPRINTF(sc, RT_DEBUG_STATS, "update statistic: \n");

}
