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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int HC_CONFIG_0_REG_BLOCK_DISABLE_0 ; 
 int HC_CONFIG_1_REG_BLOCK_DISABLE_1 ; 
 int /*<<< orphan*/  HC_REG_CONFIG_0 ; 
 int /*<<< orphan*/  HC_REG_CONFIG_1 ; 
 int IGU_BLOCK_CONFIGURATION_REG_BLOCK_ENABLE ; 
 int /*<<< orphan*/  IGU_REG_BLOCK_CONFIGURATION ; 
 int /*<<< orphan*/  PXP_REG_HST_DISCARD_DOORBELLS ; 
 int /*<<< orphan*/  PXP_REG_HST_DISCARD_INTERNAL_WRITES ; 
 int FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(struct bxe_softc *sc,
                  uint8_t          close)
{
    uint32_t val;

    /* gates #2 and #4a are closed/opened for "not E1" only */
    if (!FUNC1(sc)) {
        /* #4 */
        FUNC4(sc, PXP_REG_HST_DISCARD_DOORBELLS, !!close);
        /* #2 */
        FUNC4(sc, PXP_REG_HST_DISCARD_INTERNAL_WRITES, !!close);
    }

    /* #3 */
    if (FUNC2(sc)) {
        /* prevent interrupts from HC on both ports */
        val = FUNC3(sc, HC_REG_CONFIG_1);
        FUNC4(sc, HC_REG_CONFIG_1,
               (!close) ? (val | HC_CONFIG_1_REG_BLOCK_DISABLE_1) :
               (val & ~(uint32_t)HC_CONFIG_1_REG_BLOCK_DISABLE_1));

        val = FUNC3(sc, HC_REG_CONFIG_0);
        FUNC4(sc, HC_REG_CONFIG_0,
               (!close) ? (val | HC_CONFIG_0_REG_BLOCK_DISABLE_0) :
               (val & ~(uint32_t)HC_CONFIG_0_REG_BLOCK_DISABLE_0));
    } else {
        /* Prevent incoming interrupts in IGU */
        val = FUNC3(sc, IGU_REG_BLOCK_CONFIGURATION);

        FUNC4(sc, IGU_REG_BLOCK_CONFIGURATION,
               (!close) ?
               (val | IGU_BLOCK_CONFIGURATION_REG_BLOCK_ENABLE) :
               (val & ~(uint32_t)IGU_BLOCK_CONFIGURATION_REG_BLOCK_ENABLE));
    }

    FUNC0(sc, DBG_LOAD, "%s gates #2, #3 and #4\n",
          close ? "closing" : "opening");

    FUNC5();
}