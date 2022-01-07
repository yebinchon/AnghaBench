
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int fw_seq; } ;
struct TYPE_2__ {int fw_mb_header; int drv_mb_header; int drv_mb_param; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int,int,...) ;
 int BLOGE (struct bxe_softc*,char*) ;
 int BXE_FWMB_LOCK (struct bxe_softc*) ;
 int BXE_FWMB_UNLOCK (struct bxe_softc*) ;
 scalar_t__ CHIP_REV_IS_SLOW (struct bxe_softc*) ;
 int DBG_PHY ;
 int DELAY (int) ;
 int FW_MSG_CODE_MASK ;
 int FW_MSG_SEQ_NUMBER_MASK ;
 int SC_FW_MB_IDX (struct bxe_softc*) ;
 int SHMEM_RD (struct bxe_softc*,int ) ;
 int SHMEM_WR (struct bxe_softc*,int ,int) ;
 TYPE_1__* func_mb ;

uint32_t
elink_cb_fw_command(struct bxe_softc *sc,
                    uint32_t command,
                    uint32_t param)
{
    int mb_idx = SC_FW_MB_IDX(sc);
    uint32_t seq;
    uint32_t rc = 0;
    uint32_t cnt = 1;
    uint8_t delay = CHIP_REV_IS_SLOW(sc) ? 100 : 10;

    BXE_FWMB_LOCK(sc);

    seq = ++sc->fw_seq;
    SHMEM_WR(sc, func_mb[mb_idx].drv_mb_param, param);
    SHMEM_WR(sc, func_mb[mb_idx].drv_mb_header, (command | seq));

    BLOGD(sc, DBG_PHY,
          "wrote command 0x%08x to FW MB param 0x%08x\n",
          (command | seq), param);


    do {
        DELAY(delay * 1000);
        rc = SHMEM_RD(sc, func_mb[mb_idx].fw_mb_header);
    } while ((seq != (rc & FW_MSG_SEQ_NUMBER_MASK)) && (cnt++ < 500));

    BLOGD(sc, DBG_PHY,
          "[after %d ms] read 0x%x seq 0x%x from FW MB\n",
          cnt*delay, rc, seq);


    if (seq == (rc & FW_MSG_SEQ_NUMBER_MASK)) {
        rc &= FW_MSG_CODE_MASK;
    } else {

        BLOGE(sc, "FW failed to respond!\n");

        rc = 0;
    }

    BXE_FWMB_UNLOCK(sc);
    return (rc);
}
