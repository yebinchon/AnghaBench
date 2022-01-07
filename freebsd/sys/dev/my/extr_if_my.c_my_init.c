
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct my_softc {int dummy; } ;


 int MY_LOCK (struct my_softc*) ;
 int MY_UNLOCK (struct my_softc*) ;
 int my_init_locked (struct my_softc*) ;

__attribute__((used)) static void
my_init(void *xsc)
{
 struct my_softc *sc = xsc;

 MY_LOCK(sc);
 my_init_locked(sc);
 MY_UNLOCK(sc);
}
