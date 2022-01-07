
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct an_softc {int dummy; } ;


 int AN_LOCK (struct an_softc*) ;
 int AN_UNLOCK (struct an_softc*) ;
 int an_init_locked (struct an_softc*) ;

__attribute__((used)) static void
an_init(void *xsc)
{
 struct an_softc *sc = xsc;

 AN_LOCK(sc);
 an_init_locked(sc);
 AN_UNLOCK(sc);
}
