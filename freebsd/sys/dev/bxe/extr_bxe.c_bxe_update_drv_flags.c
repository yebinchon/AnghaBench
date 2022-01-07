
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*,scalar_t__) ;
 int DBG_LOAD ;
 int HW_LOCK_RESOURCE_DRV_FLAGS ;
 int RESET_FLAGS (scalar_t__,scalar_t__) ;
 int SET_FLAGS (scalar_t__,scalar_t__) ;
 scalar_t__ SHMEM2_HAS (struct bxe_softc*,scalar_t__) ;
 scalar_t__ SHMEM2_RD (struct bxe_softc*,scalar_t__) ;
 int SHMEM2_WR (struct bxe_softc*,scalar_t__,scalar_t__) ;
 int bxe_acquire_hw_lock (struct bxe_softc*,int ) ;
 int bxe_release_hw_lock (struct bxe_softc*,int ) ;

__attribute__((used)) static void
bxe_update_drv_flags(struct bxe_softc *sc,
                     uint32_t flags,
                     uint32_t set)
{
    uint32_t drv_flags;

    if (SHMEM2_HAS(sc, drv_flags)) {
        bxe_acquire_hw_lock(sc, HW_LOCK_RESOURCE_DRV_FLAGS);
        drv_flags = SHMEM2_RD(sc, drv_flags);

        if (set) {
            SET_FLAGS(drv_flags, flags);
        } else {
            RESET_FLAGS(drv_flags, flags);
        }

        SHMEM2_WR(sc, drv_flags, drv_flags);
        BLOGD(sc, DBG_LOAD, "drv_flags 0x%08x\n", drv_flags);

        bxe_release_hw_lock(sc, HW_LOCK_RESOURCE_DRV_FLAGS);
    }
}
