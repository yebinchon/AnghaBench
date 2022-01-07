
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atse_softc {int dummy; } ;


 int ATSE_LOCK (struct atse_softc*) ;
 int ATSE_UNLOCK (struct atse_softc*) ;
 int atse_init_locked (struct atse_softc*) ;

__attribute__((used)) static void
atse_init(void *xsc)
{
 struct atse_softc *sc;






 sc = (struct atse_softc *)xsc;
 ATSE_LOCK(sc);
 atse_init_locked(sc);
 ATSE_UNLOCK(sc);
}
