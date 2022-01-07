
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;


 int BXE_CORE_LOCK (struct bxe_softc*) ;
 int BXE_CORE_UNLOCK (struct bxe_softc*) ;
 int bxe_init_locked (struct bxe_softc*) ;

__attribute__((used)) static void
bxe_init(void *xsc)
{
    struct bxe_softc *sc = (struct bxe_softc *)xsc;

    BXE_CORE_LOCK(sc);
    bxe_init_locked(sc);
    BXE_CORE_UNLOCK(sc);
}
