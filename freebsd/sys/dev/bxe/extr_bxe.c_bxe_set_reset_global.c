
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BXE_GLOBAL_RESET_BIT ;
 int BXE_RECOVERY_GLOB_REG ;
 int HW_LOCK_RESOURCE_RECOVERY_REG ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int) ;
 int bxe_acquire_hw_lock (struct bxe_softc*,int ) ;
 int bxe_release_hw_lock (struct bxe_softc*,int ) ;

__attribute__((used)) static void
bxe_set_reset_global(struct bxe_softc *sc)
{
    uint32_t val;
    bxe_acquire_hw_lock(sc, HW_LOCK_RESOURCE_RECOVERY_REG);
    val = REG_RD(sc, BXE_RECOVERY_GLOB_REG);
    REG_WR(sc, BXE_RECOVERY_GLOB_REG, val | BXE_GLOBAL_RESET_BIT);
    bxe_release_hw_lock(sc, HW_LOCK_RESOURCE_RECOVERY_REG);
}
