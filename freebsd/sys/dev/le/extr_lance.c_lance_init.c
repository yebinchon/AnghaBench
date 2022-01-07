
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lance_softc {int dummy; } ;


 int LE_LOCK (struct lance_softc*) ;
 int LE_UNLOCK (struct lance_softc*) ;
 int lance_init_locked (struct lance_softc*) ;

__attribute__((used)) static void
lance_init(void *xsc)
{
 struct lance_softc *sc = (struct lance_softc *)xsc;

 LE_LOCK(sc);
 lance_init_locked(sc);
 LE_UNLOCK(sc);
}
