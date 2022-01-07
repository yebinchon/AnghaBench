
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bxe_softc {int fw_drv_pulse_wr_seq; } ;
struct TYPE_2__ {int drv_pulse_mb; } ;


 size_t SC_FW_MB_IDX (struct bxe_softc*) ;
 int SHMEM_WR (struct bxe_softc*,int ,int ) ;
 TYPE_1__* func_mb ;

__attribute__((used)) static void
bxe_drv_pulse(struct bxe_softc *sc)
{
    SHMEM_WR(sc, func_mb[SC_FW_MB_IDX(sc)].drv_pulse_mb,
             sc->fw_drv_pulse_wr_seq);
}
