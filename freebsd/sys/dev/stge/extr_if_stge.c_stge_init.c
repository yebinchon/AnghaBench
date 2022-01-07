
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stge_softc {int dummy; } ;


 int STGE_LOCK (struct stge_softc*) ;
 int STGE_UNLOCK (struct stge_softc*) ;
 int stge_init_locked (struct stge_softc*) ;

__attribute__((used)) static void
stge_init(void *xsc)
{
 struct stge_softc *sc;

 sc = (struct stge_softc *)xsc;
 STGE_LOCK(sc);
 stge_init_locked(sc);
 STGE_UNLOCK(sc);
}
