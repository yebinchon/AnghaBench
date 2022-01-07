
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct age_softc {int dummy; } ;


 int AGE_LOCK (struct age_softc*) ;
 int AGE_UNLOCK (struct age_softc*) ;
 int age_init_locked (struct age_softc*) ;

__attribute__((used)) static void
age_init(void *xsc)
{
 struct age_softc *sc;

 sc = (struct age_softc *)xsc;
 AGE_LOCK(sc);
 age_init_locked(sc);
 AGE_UNLOCK(sc);
}
