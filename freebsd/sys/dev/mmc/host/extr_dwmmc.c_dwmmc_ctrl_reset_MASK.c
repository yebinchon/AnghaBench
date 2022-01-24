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
struct dwmmc_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct dwmmc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMMC_CTRL ; 
 int /*<<< orphan*/  FUNC2 (struct dwmmc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct dwmmc_softc *sc, int reset_bits)
{
	int reg;
	int i;

	reg = FUNC1(sc, SDMMC_CTRL);
	reg |= (reset_bits);
	FUNC2(sc, SDMMC_CTRL, reg);

	/* Wait reset done */
	for (i = 0; i < 100; i++) {
		if (!(FUNC1(sc, SDMMC_CTRL) & reset_bits))
			return (0);
		FUNC0(10);
	}

	FUNC3(sc->dev, "Reset failed\n");

	return (1);
}