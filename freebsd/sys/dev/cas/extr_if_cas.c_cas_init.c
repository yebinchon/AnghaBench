
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas_softc {int dummy; } ;


 int CAS_LOCK (struct cas_softc*) ;
 int CAS_UNLOCK (struct cas_softc*) ;
 int cas_init_locked (struct cas_softc*) ;

__attribute__((used)) static void
cas_init(void *xsc)
{
 struct cas_softc *sc = xsc;

 CAS_LOCK(sc);
 cas_init_locked(sc);
 CAS_UNLOCK(sc);
}
