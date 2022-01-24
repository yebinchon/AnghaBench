#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {scalar_t__ pmf; } ;
struct TYPE_3__ {int aeu_int_mask; } ;
struct bxe_softc {int /*<<< orphan*/  sp_err_timeout_task; int /*<<< orphan*/  link_params; TYPE_2__ port; TYPE_1__ link_vars; } ;

/* Variables and functions */
 int AEU_INPUTS_ATTN_BITS_SPIO5 ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  BXE_ERR_MISC ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int HW_INTERRUT_ASSERT_SET_0 ; 
 int MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0 ; 
 int MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0 ; 
 int FUNC2 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int,int) ; 
 int FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static void
FUNC12(struct bxe_softc *sc,
                         uint32_t         attn)
{
    int port = FUNC4(sc);
    int reg_offset;
    uint32_t val;

    reg_offset = (port) ? MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0 :
                          MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0;

    if (attn & AEU_INPUTS_ATTN_BITS_SPIO5) {
        val = FUNC2(sc, reg_offset);
        val &= ~AEU_INPUTS_ATTN_BITS_SPIO5;
        FUNC3(sc, reg_offset, val);

        FUNC0(sc, "SPIO5 hw attention\n");

        /* Fan failure attention */
        FUNC10(&sc->link_params);
        FUNC6(sc);
    }

    if ((attn & sc->link_vars.aeu_int_mask) && sc->port.pmf) {
	FUNC5(sc);
        FUNC9(&sc->link_params);
	FUNC8(sc);
    }

    if (attn & HW_INTERRUT_ASSERT_SET_0) {
        val = FUNC2(sc, reg_offset);
        val &= ~(attn & HW_INTERRUT_ASSERT_SET_0);
        FUNC3(sc, reg_offset, val);


        FUNC1(sc, BXE_ERR_MISC);
        FUNC11(taskqueue_thread,
           &sc->sp_err_timeout_task, hz/10);

        FUNC7(sc, ("FATAL HW block attention set0 0x%lx\n",
                       (attn & HW_INTERRUT_ASSERT_SET_0)));
    }
}