
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ste_softc {int dummy; } ;
struct ifnet {struct ste_softc* if_softc; } ;


 int STE_LOCK (struct ste_softc*) ;
 int STE_UNLOCK (struct ste_softc*) ;
 int ste_start_locked (struct ifnet*) ;

__attribute__((used)) static void
ste_start(struct ifnet *ifp)
{
 struct ste_softc *sc;

 sc = ifp->if_softc;
 STE_LOCK(sc);
 ste_start_locked(ifp);
 STE_UNLOCK(sc);
}
