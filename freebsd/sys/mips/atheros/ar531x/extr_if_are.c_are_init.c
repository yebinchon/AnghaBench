
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct are_softc {int dummy; } ;


 int ARE_LOCK (struct are_softc*) ;
 int ARE_UNLOCK (struct are_softc*) ;
 int are_init_locked (struct are_softc*) ;

__attribute__((used)) static void
are_init(void *xsc)
{
 struct are_softc *sc = xsc;

 ARE_LOCK(sc);
 are_init_locked(sc);
 ARE_UNLOCK(sc);
}
