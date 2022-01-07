
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ste_softc {int dummy; } ;


 int STE_LOCK (struct ste_softc*) ;
 int STE_UNLOCK (struct ste_softc*) ;
 int ste_init_locked (struct ste_softc*) ;

__attribute__((used)) static void
ste_init(void *xsc)
{
 struct ste_softc *sc;

 sc = xsc;
 STE_LOCK(sc);
 ste_init_locked(sc);
 STE_UNLOCK(sc);
}
