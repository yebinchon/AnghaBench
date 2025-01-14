
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;


 scalar_t__ EDEBUG_DRIVER_IF_OP_CODE_DISABLE_STAT ;
 int FALSE ;
 scalar_t__ SHMEM2_HAS (struct bxe_softc*,int ) ;
 scalar_t__ SHMEM2_RD (struct bxe_softc*,int ) ;
 int TRUE ;
 int * edebug_driver_if ;

__attribute__((used)) static uint8_t
bxe_edebug_stats_stopped(struct bxe_softc *sc)
{
    uint32_t val;

    if (SHMEM2_HAS(sc, edebug_driver_if[1])) {
        val = SHMEM2_RD(sc, edebug_driver_if[1]);

        if (val == EDEBUG_DRIVER_IF_OP_CODE_DISABLE_STAT) {
            return (TRUE);
        }
    }

    return (FALSE);
}
