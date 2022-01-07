
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int dummy; } ;


 int VTNET_CORE_LOCK (struct vtnet_softc*) ;
 int VTNET_CORE_UNLOCK (struct vtnet_softc*) ;
 int vtnet_init_locked (struct vtnet_softc*) ;

__attribute__((used)) static void
vtnet_init(void *xsc)
{
 struct vtnet_softc *sc;

 sc = xsc;

 VTNET_CORE_LOCK(sc);
 vtnet_init_locked(sc);
 VTNET_CORE_UNLOCK(sc);
}
