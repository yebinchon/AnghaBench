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
 int /*<<< orphan*/  BXE_PATH0_RST_IN_PROG_BIT ; 
 int /*<<< orphan*/  BXE_PATH1_RST_IN_PROG_BIT ; 
 int /*<<< orphan*/  BXE_RECOVERY_GLOB_REG ; 
 int /*<<< orphan*/  HW_LOCK_RESOURCE_RECOVERY_REG ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct bxe_softc *sc)
{
    uint32_t val;
    uint32_t bit = FUNC2(sc) ? BXE_PATH1_RST_IN_PROG_BIT :
                                 BXE_PATH0_RST_IN_PROG_BIT;

    FUNC3(sc, HW_LOCK_RESOURCE_RECOVERY_REG);

    val = FUNC0(sc, BXE_RECOVERY_GLOB_REG);
    /* Set the bit */
    val |= bit;
    FUNC1(sc, BXE_RECOVERY_GLOB_REG, val);

    FUNC4(sc, HW_LOCK_RESOURCE_RECOVERY_REG);
}