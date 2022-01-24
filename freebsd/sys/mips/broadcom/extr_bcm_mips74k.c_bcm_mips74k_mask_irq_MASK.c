#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ num_cpuirqs; } ;
struct bcm_mips74k_softc {int /*<<< orphan*/  mem; TYPE_1__ bcm_mips; } ;

/* Variables and functions */
 scalar_t__ BCMA_OOB_NUM_BUSLINES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ BCM_MIPS74K_NUM_INTR ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct bcm_mips74k_softc *sc, u_int mips_irq, u_int ivec)
{
	uint32_t oobsel;

	FUNC2(mips_irq < sc->bcm_mips.num_cpuirqs, ("invalid MIPS IRQ %u",
	    mips_irq));
	FUNC2(mips_irq < BCM_MIPS74K_NUM_INTR, ("unsupported MIPS IRQ %u",
	    mips_irq));
	FUNC2(ivec < BCMA_OOB_NUM_BUSLINES, ("invalid backplane ivec"));

	oobsel = FUNC3(sc->mem, FUNC0(mips_irq));
	oobsel &= ~(FUNC1(ivec));
	FUNC4(sc->mem, FUNC0(mips_irq), oobsel);
}