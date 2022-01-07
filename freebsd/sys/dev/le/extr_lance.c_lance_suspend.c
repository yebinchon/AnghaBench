
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lance_softc {int dummy; } ;


 int LE_LOCK (struct lance_softc*) ;
 int LE_UNLOCK (struct lance_softc*) ;
 int lance_stop (struct lance_softc*) ;

void
lance_suspend(struct lance_softc *sc)
{

 LE_LOCK(sc);
 lance_stop(sc);
 LE_UNLOCK(sc);
}
