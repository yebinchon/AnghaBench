
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbni_softc {int dummy; } ;


 int SBNI_LOCK (struct sbni_softc*) ;
 int SBNI_UNLOCK (struct sbni_softc*) ;
 int sbni_init_locked (struct sbni_softc*) ;

__attribute__((used)) static void
sbni_init(void *xsc)
{
 struct sbni_softc *sc;

 sc = (struct sbni_softc *)xsc;
 SBNI_LOCK(sc);
 sbni_init_locked(sc);
 SBNI_UNLOCK(sc);
}
