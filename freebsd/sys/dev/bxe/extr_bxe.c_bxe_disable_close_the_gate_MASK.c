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
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int MISC_AEU_GENERAL_MASK_REG_AEU_NIG_CLOSE_MASK ; 
 int MISC_AEU_GENERAL_MASK_REG_AEU_PXP_CLOSE_MASK ; 
 int MISC_REG_AEU_GENERAL_MASK ; 
 int MISC_REG_AEU_MASK_ATTN_FUNC_0 ; 
 int MISC_REG_AEU_MASK_ATTN_FUNC_1 ; 
 int FUNC2 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int,int) ; 
 int FUNC4 (struct bxe_softc*) ; 

__attribute__((used)) static void
FUNC5(struct bxe_softc *sc)
{
    uint32_t val;
    int port = FUNC4(sc);

    FUNC0(sc, DBG_LOAD,
          "Disabling 'close the gates'\n");

    if (FUNC1(sc)) {
        uint32_t addr = port ? MISC_REG_AEU_MASK_ATTN_FUNC_1 :
                               MISC_REG_AEU_MASK_ATTN_FUNC_0;
        val = FUNC2(sc, addr);
        val &= ~(0x300);
        FUNC3(sc, addr, val);
    } else {
        val = FUNC2(sc, MISC_REG_AEU_GENERAL_MASK);
        val &= ~(MISC_AEU_GENERAL_MASK_REG_AEU_PXP_CLOSE_MASK |
                 MISC_AEU_GENERAL_MASK_REG_AEU_NIG_CLOSE_MASK);
        FUNC3(sc, MISC_REG_AEU_GENERAL_MASK, val);
    }
}