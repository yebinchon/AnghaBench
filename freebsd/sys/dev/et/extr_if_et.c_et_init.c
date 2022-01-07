
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_softc {int dummy; } ;


 int ET_LOCK (struct et_softc*) ;
 int ET_UNLOCK (struct et_softc*) ;
 int et_init_locked (struct et_softc*) ;

__attribute__((used)) static void
et_init(void *xsc)
{
 struct et_softc *sc = xsc;

 ET_LOCK(sc);
 et_init_locked(sc);
 ET_UNLOCK(sc);
}
