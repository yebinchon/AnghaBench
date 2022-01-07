
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_softc {int dummy; } ;


 int TI_LOCK (struct ti_softc*) ;
 int TI_UNLOCK (struct ti_softc*) ;
 int ti_init_locked (struct ti_softc*) ;

__attribute__((used)) static void
ti_init(void *xsc)
{
 struct ti_softc *sc;

 sc = xsc;
 TI_LOCK(sc);
 ti_init_locked(sc);
 TI_UNLOCK(sc);
}
