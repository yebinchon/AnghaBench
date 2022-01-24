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
 int AEU_INPUTS_ATTN_BITS_DOORBELLQ_HW_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,...) ; 
 int /*<<< orphan*/  BXE_ERR_MISC ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int DORQ_REG_DORQ_INT_STS_CLR ; 
 scalar_t__ FALSE ; 
 int HW_INTERRUT_ASSERT_SET_1 ; 
 int MISC_REG_AEU_ENABLE1_FUNC_0_OUT_1 ; 
 int MISC_REG_AEU_ENABLE1_FUNC_1_OUT_1 ; 
 int FUNC2 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int,int) ; 
 int FUNC4 (struct bxe_softc*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,char*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static void
FUNC7(struct bxe_softc *sc,
                         uint32_t         attn)
{
    int port = FUNC4(sc);
    int reg_offset;
    uint32_t val;
    boolean_t err_flg = FALSE;

    if (attn & AEU_INPUTS_ATTN_BITS_DOORBELLQ_HW_INTERRUPT) {
        val = FUNC2(sc, DORQ_REG_DORQ_INT_STS_CLR);
        FUNC0(sc, "DB hw attention 0x%08x\n", val);
        /* DORQ discard attention */
        if (val & 0x2) {
            FUNC0(sc, "FATAL error from DORQ\n");
	    err_flg = TRUE;
        }
    }

    if (attn & HW_INTERRUT_ASSERT_SET_1) {
        reg_offset = (port ? MISC_REG_AEU_ENABLE1_FUNC_1_OUT_1 :
                             MISC_REG_AEU_ENABLE1_FUNC_0_OUT_1);

        val = FUNC2(sc, reg_offset);
        val &= ~(attn & HW_INTERRUT_ASSERT_SET_1);
        FUNC3(sc, reg_offset, val);

        FUNC0(sc, "FATAL HW block attention set1 0x%08x\n",
              (uint32_t)(attn & HW_INTERRUT_ASSERT_SET_1));
        err_flg = TRUE;
        FUNC5(sc, ("HW block attention set1\n"));
    }
    if(err_flg) {
        FUNC1(sc, BXE_ERR_MISC);
        FUNC6(taskqueue_thread,
           &sc->sp_err_timeout_task, hz/10);
    }

}