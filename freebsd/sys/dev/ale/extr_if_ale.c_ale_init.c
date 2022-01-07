
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ale_softc {int dummy; } ;


 int ALE_LOCK (struct ale_softc*) ;
 int ALE_UNLOCK (struct ale_softc*) ;
 int ale_init_locked (struct ale_softc*) ;

__attribute__((used)) static void
ale_init(void *xsc)
{
 struct ale_softc *sc;

 sc = (struct ale_softc *)xsc;
 ALE_LOCK(sc);
 ale_init_locked(sc);
 ALE_UNLOCK(sc);
}
