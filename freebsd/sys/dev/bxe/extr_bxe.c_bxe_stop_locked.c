
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;


 int BXE_CORE_LOCK_ASSERT (struct bxe_softc*) ;
 int TRUE ;
 int UNLOAD_NORMAL ;
 int bxe_nic_unload (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static int
bxe_stop_locked(struct bxe_softc *sc)
{
    BXE_CORE_LOCK_ASSERT(sc);
    return (bxe_nic_unload(sc, UNLOAD_NORMAL, TRUE));
}
