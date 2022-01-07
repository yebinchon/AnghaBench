
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtbe_softc {int dummy; } ;


 int VTBE_LOCK (struct vtbe_softc*) ;
 int VTBE_UNLOCK (struct vtbe_softc*) ;
 int vtbe_init_locked (struct vtbe_softc*) ;

__attribute__((used)) static void
vtbe_init(void *if_softc)
{
 struct vtbe_softc *sc = if_softc;

 VTBE_LOCK(sc);
 vtbe_init_locked(sc);
 VTBE_UNLOCK(sc);
}
