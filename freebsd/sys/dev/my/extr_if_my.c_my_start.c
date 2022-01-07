
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct my_softc {int dummy; } ;
struct ifnet {struct my_softc* if_softc; } ;


 int MY_LOCK (struct my_softc*) ;
 int MY_UNLOCK (struct my_softc*) ;
 int my_start_locked (struct ifnet*) ;

__attribute__((used)) static void
my_start(struct ifnet * ifp)
{
 struct my_softc *sc;

 sc = ifp->if_softc;
 MY_LOCK(sc);
 my_start_locked(ifp);
 MY_UNLOCK(sc);
}
