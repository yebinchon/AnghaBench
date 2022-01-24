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
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int) ; 
 int BXE_PATH0_LOAD_CNT_MASK ; 
 int BXE_PATH0_LOAD_CNT_SHIFT ; 
 int BXE_PATH1_LOAD_CNT_MASK ; 
 int BXE_PATH1_LOAD_CNT_SHIFT ; 
 int /*<<< orphan*/  BXE_RECOVERY_GLOB_REG ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  HW_LOCK_RESOURCE_RECOVERY_REG ; 
 int FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct bxe_softc*) ; 
 scalar_t__ FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct bxe_softc *sc)
{
    uint32_t val;
    uint32_t val1;
    uint32_t mask = FUNC4(sc) ? BXE_PATH1_LOAD_CNT_MASK :
                                  BXE_PATH0_LOAD_CNT_MASK;
    uint32_t shift = FUNC4(sc) ? BXE_PATH1_LOAD_CNT_SHIFT :
                                   BXE_PATH0_LOAD_CNT_SHIFT;

    FUNC5(sc, HW_LOCK_RESOURCE_RECOVERY_REG);

    val = FUNC1(sc, BXE_RECOVERY_GLOB_REG);
    FUNC0(sc, DBG_LOAD, "Old value for GLOB_REG=0x%08x\n", val);

    /* get the current counter value */
    val1 = ((val & mask) >> shift);

    /* set bit of this PF */
    val1 |= (1 << FUNC3(sc));

    /* clear the old value */
    val &= ~mask;

    /* set the new one */
    val |= ((val1 << shift) & mask);

    FUNC2(sc, BXE_RECOVERY_GLOB_REG, val);

    FUNC6(sc, HW_LOCK_RESOURCE_RECOVERY_REG);
}