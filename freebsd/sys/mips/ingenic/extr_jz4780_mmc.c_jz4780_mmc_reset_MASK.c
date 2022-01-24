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
struct jz4780_mmc_softc {int /*<<< orphan*/  sc_intr_mask; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int JZ_CLK_EN ; 
 int JZ_CLOCK_STOP ; 
 int JZ_IS_RESETTING ; 
 int FUNC1 (struct jz4780_mmc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jz4780_mmc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  JZ_MSC_CTRL ; 
 int /*<<< orphan*/  JZ_MSC_IFLG ; 
 int /*<<< orphan*/  JZ_MSC_IMASK ; 
 int /*<<< orphan*/  JZ_MSC_INT_ERR_BITS ; 
 int /*<<< orphan*/  JZ_MSC_RDTO ; 
 int /*<<< orphan*/  JZ_MSC_RESTO ; 
 int /*<<< orphan*/  JZ_MSC_STAT ; 
 int JZ_RESET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct jz4780_mmc_softc *sc)
{
	int timeout;

	/* Stop the clock */
	FUNC2(sc, JZ_MSC_CTRL, JZ_CLOCK_STOP);

	timeout = 1000;
	while (--timeout > 0) {
		if ((FUNC1(sc, JZ_MSC_STAT) & JZ_CLK_EN) == 0)
			break;
		FUNC0(100);
	}
	if (timeout == 0) {
		FUNC3(sc->sc_dev, "Failed to stop clk.\n");
		return (ETIMEDOUT);
	}

	/* Reset */
	FUNC2(sc, JZ_MSC_CTRL, JZ_RESET);

	timeout = 10;
	while (--timeout > 0) {
		if ((FUNC1(sc, JZ_MSC_STAT) & JZ_IS_RESETTING) == 0)
			break;
		FUNC0(1000);
	}

	if (timeout == 0) {
		/*
		 * X1000 never clears reseting bit.
		 * Ignore for now.
		 */
	}

	/* Set the timeouts. */
	FUNC2(sc, JZ_MSC_RESTO, 0xffff);
	FUNC2(sc, JZ_MSC_RDTO, 0xffffffff);

	/* Mask all interrupt initially */
	FUNC2(sc, JZ_MSC_IMASK, 0xffffffff);
	/* Clear pending interrupts. */
	FUNC2(sc, JZ_MSC_IFLG, 0xffffffff);

	/* Remember interrupts we always want */
	sc->sc_intr_mask = JZ_MSC_INT_ERR_BITS;

	return (0);
}