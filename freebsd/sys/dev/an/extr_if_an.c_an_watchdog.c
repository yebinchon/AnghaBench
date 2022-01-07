
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct an_softc {scalar_t__ mpi350; struct ifnet* an_ifp; scalar_t__ an_gone; } ;


 int AN_LOCK_ASSERT (struct an_softc*) ;
 int IFCOUNTER_OERRORS ;
 int an_init_locked (struct an_softc*) ;
 int an_init_mpi350_desc (struct an_softc*) ;
 int an_reset (struct an_softc*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*) ;

__attribute__((used)) static void
an_watchdog(struct an_softc *sc)
{
 struct ifnet *ifp;

 AN_LOCK_ASSERT(sc);

 if (sc->an_gone)
  return;

 ifp = sc->an_ifp;
 if_printf(ifp, "device timeout\n");

 an_reset(sc);
 if (sc->mpi350)
  an_init_mpi350_desc(sc);
 an_init_locked(sc);

 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
}
