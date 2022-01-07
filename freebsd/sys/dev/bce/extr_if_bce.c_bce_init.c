
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bce_softc {int dummy; } ;


 int BCE_LOCK (struct bce_softc*) ;
 int BCE_UNLOCK (struct bce_softc*) ;
 int BCE_VERBOSE_RESET ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int bce_init_locked (struct bce_softc*) ;

__attribute__((used)) static void
bce_init(void *xsc)
{
 struct bce_softc *sc = xsc;

 DBENTER(BCE_VERBOSE_RESET);

 BCE_LOCK(sc);
 bce_init_locked(sc);
 BCE_UNLOCK(sc);

 DBEXIT(BCE_VERBOSE_RESET);
}
