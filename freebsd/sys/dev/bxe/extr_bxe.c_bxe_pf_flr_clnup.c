
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*,...) ;
 int BLOGE (struct bxe_softc*,char*) ;
 int DBG_LOAD ;
 int DELAY (int) ;
 int PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER ;
 int PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ ;
 int REG_WR (struct bxe_softc*,int ,int) ;
 int SC_ABS_FUNC (struct bxe_softc*) ;
 scalar_t__ SC_FUNC (struct bxe_softc*) ;
 int bxe_flr_clnup_poll_count (struct bxe_softc*) ;
 int bxe_hw_enable_status (struct bxe_softc*) ;
 scalar_t__ bxe_is_pcie_pending (struct bxe_softc*) ;
 scalar_t__ bxe_poll_hw_usage_counters (struct bxe_softc*,int ) ;
 scalar_t__ bxe_send_final_clnup (struct bxe_softc*,int ,int ) ;
 int bxe_tx_hw_flushed (struct bxe_softc*,int ) ;

__attribute__((used)) static int
bxe_pf_flr_clnup(struct bxe_softc *sc)
{
    uint32_t poll_cnt = bxe_flr_clnup_poll_count(sc);

    BLOGD(sc, DBG_LOAD, "Cleanup after FLR PF[%d]\n", SC_ABS_FUNC(sc));


    REG_WR(sc, PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ, 1);


    BLOGD(sc, DBG_LOAD, "Polling usage counters\n");
    if (bxe_poll_hw_usage_counters(sc, poll_cnt)) {
        return (-1);
    }




    if (bxe_send_final_clnup(sc, (uint8_t)SC_FUNC(sc), poll_cnt)) {
        return (-1);
    }




    bxe_tx_hw_flushed(sc, poll_cnt);


    DELAY(100000);


    if (bxe_is_pcie_pending(sc)) {
        BLOGE(sc, "PCIE Transactions still pending\n");
    }


    bxe_hw_enable_status(sc);





    REG_WR(sc, PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, 1);

    return (0);
}
