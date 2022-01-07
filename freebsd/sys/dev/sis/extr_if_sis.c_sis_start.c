
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_softc {int dummy; } ;
struct ifnet {struct sis_softc* if_softc; } ;


 int SIS_LOCK (struct sis_softc*) ;
 int SIS_UNLOCK (struct sis_softc*) ;
 int sis_startl (struct ifnet*) ;

__attribute__((used)) static void
sis_start(struct ifnet *ifp)
{
 struct sis_softc *sc;

 sc = ifp->if_softc;
 SIS_LOCK(sc);
 sis_startl(ifp);
 SIS_UNLOCK(sc);
}
