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
typedef  int uint32_t ;
struct bxe_softc {int /*<<< orphan*/  sp_err_timeout_task; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int AEU_INPUTS_ATTN_BITS_ATC_HW_INTERRUPT ; 
 int AEU_INPUTS_ATTN_BITS_ATC_PARITY_ERROR ; 
 int AEU_INPUTS_ATTN_BITS_PGLUE_HW_INTERRUPT ; 
 int AEU_INPUTS_ATTN_BITS_PGLUE_PARITY_ERROR ; 
 int ATC_ATC_INT_STS_REG_ADDRESS_ERROR ; 
 int ATC_ATC_INT_STS_REG_ATC_GPA_MULTIPLE_HITS ; 
 int ATC_ATC_INT_STS_REG_ATC_IREQ_LESS_THAN_STU ; 
 int ATC_ATC_INT_STS_REG_ATC_RCPL_TO_EMPTY_CNT ; 
 int ATC_ATC_INT_STS_REG_ATC_TCPL_ERROR ; 
 int ATC_ATC_INT_STS_REG_ATC_TCPL_TO_NOT_PEND ; 
 int /*<<< orphan*/  ATC_REG_ATC_INT_STS_CLR ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,...) ; 
 int /*<<< orphan*/  BXE_ERR_MISC ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int PGLUE_B_PGLUE_B_INT_STS_REG_ADDRESS_ERROR ; 
 int PGLUE_B_PGLUE_B_INT_STS_REG_CSSNOOP_FIFO_OVERFLOW ; 
 int PGLUE_B_PGLUE_B_INT_STS_REG_INCORRECT_RCV_BEHAVIOR ; 
 int PGLUE_B_PGLUE_B_INT_STS_REG_TCPL_ERROR_ATTN ; 
 int PGLUE_B_PGLUE_B_INT_STS_REG_TCPL_IN_TWO_RCBS_ATTN ; 
 int PGLUE_B_PGLUE_B_INT_STS_REG_VF_GRC_SPACE_VIOLATION_ATTN ; 
 int PGLUE_B_PGLUE_B_INT_STS_REG_VF_LENGTH_VIOLATION_ATTN ; 
 int PGLUE_B_PGLUE_B_INT_STS_REG_VF_MSIX_BAR_VIOLATION_ATTN ; 
 int PGLUE_B_PGLUE_B_INT_STS_REG_WAS_ERROR_ATTN ; 
 int /*<<< orphan*/  PGLUE_B_REG_PGLUE_B_INT_STS_CLR ; 
 int FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static void
FUNC4(struct bxe_softc *sc,
                         uint32_t         attn)
{
    uint32_t val;
    boolean_t err_flg = FALSE;

    if (attn & AEU_INPUTS_ATTN_BITS_PGLUE_HW_INTERRUPT) {
        val = FUNC2(sc, PGLUE_B_REG_PGLUE_B_INT_STS_CLR);
        FUNC0(sc, "PGLUE hw attention 0x%08x\n", val);
        err_flg = TRUE;
        if (val & PGLUE_B_PGLUE_B_INT_STS_REG_ADDRESS_ERROR)
            FUNC0(sc, "PGLUE_B_PGLUE_B_INT_STS_REG_ADDRESS_ERROR\n");
        if (val & PGLUE_B_PGLUE_B_INT_STS_REG_INCORRECT_RCV_BEHAVIOR)
            FUNC0(sc, "PGLUE_B_PGLUE_B_INT_STS_REG_INCORRECT_RCV_BEHAVIOR\n");
        if (val & PGLUE_B_PGLUE_B_INT_STS_REG_WAS_ERROR_ATTN)
            FUNC0(sc, "PGLUE_B_PGLUE_B_INT_STS_REG_WAS_ERROR_ATTN\n");
        if (val & PGLUE_B_PGLUE_B_INT_STS_REG_VF_LENGTH_VIOLATION_ATTN)
            FUNC0(sc, "PGLUE_B_PGLUE_B_INT_STS_REG_VF_LENGTH_VIOLATION_ATTN\n");
        if (val & PGLUE_B_PGLUE_B_INT_STS_REG_VF_GRC_SPACE_VIOLATION_ATTN)
            FUNC0(sc, "PGLUE_B_PGLUE_B_INT_STS_REG_VF_GRC_SPACE_VIOLATION_ATTN\n");
        if (val & PGLUE_B_PGLUE_B_INT_STS_REG_VF_MSIX_BAR_VIOLATION_ATTN)
            FUNC0(sc, "PGLUE_B_PGLUE_B_INT_STS_REG_VF_MSIX_BAR_VIOLATION_ATTN\n");
        if (val & PGLUE_B_PGLUE_B_INT_STS_REG_TCPL_ERROR_ATTN)
            FUNC0(sc, "PGLUE_B_PGLUE_B_INT_STS_REG_TCPL_ERROR_ATTN\n");
        if (val & PGLUE_B_PGLUE_B_INT_STS_REG_TCPL_IN_TWO_RCBS_ATTN)
            FUNC0(sc, "PGLUE_B_PGLUE_B_INT_STS_REG_TCPL_IN_TWO_RCBS_ATTN\n");
        if (val & PGLUE_B_PGLUE_B_INT_STS_REG_CSSNOOP_FIFO_OVERFLOW)
            FUNC0(sc, "PGLUE_B_PGLUE_B_INT_STS_REG_CSSNOOP_FIFO_OVERFLOW\n");
    }

    if (attn & AEU_INPUTS_ATTN_BITS_ATC_HW_INTERRUPT) {
        val = FUNC2(sc, ATC_REG_ATC_INT_STS_CLR);
        FUNC0(sc, "ATC hw attention 0x%08x\n", val);
	err_flg = TRUE;
        if (val & ATC_ATC_INT_STS_REG_ADDRESS_ERROR)
            FUNC0(sc, "ATC_ATC_INT_STS_REG_ADDRESS_ERROR\n");
        if (val & ATC_ATC_INT_STS_REG_ATC_TCPL_TO_NOT_PEND)
            FUNC0(sc, "ATC_ATC_INT_STS_REG_ATC_TCPL_TO_NOT_PEND\n");
        if (val & ATC_ATC_INT_STS_REG_ATC_GPA_MULTIPLE_HITS)
            FUNC0(sc, "ATC_ATC_INT_STS_REG_ATC_GPA_MULTIPLE_HITS\n");
        if (val & ATC_ATC_INT_STS_REG_ATC_RCPL_TO_EMPTY_CNT)
            FUNC0(sc, "ATC_ATC_INT_STS_REG_ATC_RCPL_TO_EMPTY_CNT\n");
        if (val & ATC_ATC_INT_STS_REG_ATC_TCPL_ERROR)
            FUNC0(sc, "ATC_ATC_INT_STS_REG_ATC_TCPL_ERROR\n");
        if (val & ATC_ATC_INT_STS_REG_ATC_IREQ_LESS_THAN_STU)
            FUNC0(sc, "ATC_ATC_INT_STS_REG_ATC_IREQ_LESS_THAN_STU\n");
    }

    if (attn & (AEU_INPUTS_ATTN_BITS_PGLUE_PARITY_ERROR |
                AEU_INPUTS_ATTN_BITS_ATC_PARITY_ERROR)) {
        FUNC0(sc, "FATAL parity attention set4 0x%08x\n",
              (uint32_t)(attn & (AEU_INPUTS_ATTN_BITS_PGLUE_PARITY_ERROR |
                                 AEU_INPUTS_ATTN_BITS_ATC_PARITY_ERROR)));
	err_flg = TRUE;
    }
    if (err_flg) {
	FUNC1(sc, BXE_ERR_MISC);
	FUNC3(taskqueue_thread,
	    &sc->sp_err_timeout_task, hz/10);
    }

}