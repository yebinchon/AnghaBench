#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ CFC_REG_NUM_LCIDS_INSIDE_PF ; 
 scalar_t__ DORQ_REG_PF_USAGE_CNT ; 
 size_t FUNC0 (struct bxe_softc*) ; 
 scalar_t__ QM_REG_PF_USG_CNT_0 ; 
 int FUNC1 (struct bxe_softc*) ; 
 int FUNC2 (struct bxe_softc*) ; 
 scalar_t__ TM_REG_LIN0_NUM_SCANS ; 
 scalar_t__ TM_REG_LIN0_VNIC_UC ; 
 scalar_t__ FUNC3 (struct bxe_softc*,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 scalar_t__* dmae_reg_go_c ; 

__attribute__((used)) static int
FUNC4(struct bxe_softc *sc,
                           uint32_t         poll_cnt)
{
    /* wait for CFC PF usage-counter to zero (includes all the VFs) */
    if (FUNC3(sc,
                                      CFC_REG_NUM_LCIDS_INSIDE_PF,
                                      "CFC PF usage counter timed out",
                                      poll_cnt)) {
        return (1);
    }

    /* Wait for DQ PF usage-counter to zero (until DQ cleanup) */
    if (FUNC3(sc,
                                      DORQ_REG_PF_USAGE_CNT,
                                      "DQ PF usage counter timed out",
                                      poll_cnt)) {
        return (1);
    }

    /* Wait for QM PF usage-counter to zero (until DQ cleanup) */
    if (FUNC3(sc,
                                      QM_REG_PF_USG_CNT_0 + 4*FUNC1(sc),
                                      "QM PF usage counter timed out",
                                      poll_cnt)) {
        return (1);
    }

    /* Wait for Timer PF usage-counters to zero (until DQ cleanup) */
    if (FUNC3(sc,
                                      TM_REG_LIN0_VNIC_UC + 4*FUNC2(sc),
                                      "Timers VNIC usage counter timed out",
                                      poll_cnt)) {
        return (1);
    }

    if (FUNC3(sc,
                                      TM_REG_LIN0_NUM_SCANS + 4*FUNC2(sc),
                                      "Timers NUM_SCANS usage counter timed out",
                                      poll_cnt)) {
        return (1);
    }

    /* Wait DMAE PF usage counter to zero */
    if (FUNC3(sc,
                                      dmae_reg_go_c[FUNC0(sc)],
                                      "DMAE dommand register timed out",
                                      poll_cnt)) {
        return (1);
    }

    return (0);
}