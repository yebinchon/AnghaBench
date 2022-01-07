
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gem_softc {int dummy; } ;


 int GEM_LOCK (struct gem_softc*) ;
 int GEM_UNLOCK (struct gem_softc*) ;
 int gem_init_locked (struct gem_softc*) ;

__attribute__((used)) static void
gem_init(void *xsc)
{
 struct gem_softc *sc = xsc;

 GEM_LOCK(sc);
 gem_init_locked(sc);
 GEM_UNLOCK(sc);
}
