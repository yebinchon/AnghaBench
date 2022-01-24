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
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int PGLUE_B_PGLUE_B_INT_STS_REG_WAS_ERROR_ATTN ; 
 int /*<<< orphan*/  PGLUE_B_REG_PGLUE_B_INT_STS ; 
 int /*<<< orphan*/  PGLUE_B_REG_WAS_ERROR_PF_7_0_CLR ; 
 int FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct bxe_softc*) ; 

__attribute__((used)) static void
FUNC5(struct bxe_softc *sc)
{
    uint32_t val;

    if (!FUNC1(sc)) {
        val = FUNC2(sc, PGLUE_B_REG_PGLUE_B_INT_STS);
        if (val & PGLUE_B_PGLUE_B_INT_STS_REG_WAS_ERROR_ATTN) {
            FUNC0(sc, DBG_LOAD,
                  "Clearing 'was-error' bit that was set in pglueb");
            FUNC3(sc, PGLUE_B_REG_WAS_ERROR_PF_7_0_CLR, 1 << FUNC4(sc));
        }
    }
}