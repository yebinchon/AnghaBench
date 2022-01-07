
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 scalar_t__ CFC_REG_NUM_LCIDS_INSIDE_PF ;
 scalar_t__ DORQ_REG_PF_USAGE_CNT ;
 size_t INIT_DMAE_C (struct bxe_softc*) ;
 scalar_t__ QM_REG_PF_USG_CNT_0 ;
 int SC_FUNC (struct bxe_softc*) ;
 int SC_PORT (struct bxe_softc*) ;
 scalar_t__ TM_REG_LIN0_NUM_SCANS ;
 scalar_t__ TM_REG_LIN0_VNIC_UC ;
 scalar_t__ bxe_flr_clnup_poll_hw_counter (struct bxe_softc*,scalar_t__,char*,int ) ;
 scalar_t__* dmae_reg_go_c ;

__attribute__((used)) static int
bxe_poll_hw_usage_counters(struct bxe_softc *sc,
                           uint32_t poll_cnt)
{

    if (bxe_flr_clnup_poll_hw_counter(sc,
                                      CFC_REG_NUM_LCIDS_INSIDE_PF,
                                      "CFC PF usage counter timed out",
                                      poll_cnt)) {
        return (1);
    }


    if (bxe_flr_clnup_poll_hw_counter(sc,
                                      DORQ_REG_PF_USAGE_CNT,
                                      "DQ PF usage counter timed out",
                                      poll_cnt)) {
        return (1);
    }


    if (bxe_flr_clnup_poll_hw_counter(sc,
                                      QM_REG_PF_USG_CNT_0 + 4*SC_FUNC(sc),
                                      "QM PF usage counter timed out",
                                      poll_cnt)) {
        return (1);
    }


    if (bxe_flr_clnup_poll_hw_counter(sc,
                                      TM_REG_LIN0_VNIC_UC + 4*SC_PORT(sc),
                                      "Timers VNIC usage counter timed out",
                                      poll_cnt)) {
        return (1);
    }

    if (bxe_flr_clnup_poll_hw_counter(sc,
                                      TM_REG_LIN0_NUM_SCANS + 4*SC_PORT(sc),
                                      "Timers NUM_SCANS usage counter timed out",
                                      poll_cnt)) {
        return (1);
    }


    if (bxe_flr_clnup_poll_hw_counter(sc,
                                      dmae_reg_go_c[INIT_DMAE_C(sc)],
                                      "DMAE dommand register timed out",
                                      poll_cnt)) {
        return (1);
    }

    return (0);
}
