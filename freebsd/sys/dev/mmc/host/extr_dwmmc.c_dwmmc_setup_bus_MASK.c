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
struct dwmmc_softc {int bus_hz; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (struct dwmmc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMMC_CLKDIV ; 
 int /*<<< orphan*/  SDMMC_CLKENA ; 
 int SDMMC_CLKENA_CCLK_EN ; 
 int SDMMC_CLKENA_LP ; 
 int /*<<< orphan*/  SDMMC_CLKSRC ; 
 int /*<<< orphan*/  SDMMC_CMD ; 
 int SDMMC_CMD_START ; 
 int SDMMC_CMD_UPD_CLK_ONLY ; 
 int SDMMC_CMD_WAIT_PRVDATA ; 
 int /*<<< orphan*/  FUNC2 (struct dwmmc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct dwmmc_softc *sc, int freq)
{
	int tout;
	int div;

	if (freq == 0) {
		FUNC2(sc, SDMMC_CLKENA, 0);
		FUNC2(sc, SDMMC_CMD, (SDMMC_CMD_WAIT_PRVDATA |
			SDMMC_CMD_UPD_CLK_ONLY | SDMMC_CMD_START));

		tout = 1000;
		do {
			if (tout-- < 0) {
				FUNC3(sc->dev, "Failed update clk\n");
				return (1);
			}
		} while (FUNC1(sc, SDMMC_CMD) & SDMMC_CMD_START);

		return (0);
	}

	FUNC2(sc, SDMMC_CLKENA, 0);
	FUNC2(sc, SDMMC_CLKSRC, 0);

	div = (sc->bus_hz != freq) ? FUNC0(sc->bus_hz, 2 * freq) : 0;

	FUNC2(sc, SDMMC_CLKDIV, div);
	FUNC2(sc, SDMMC_CMD, (SDMMC_CMD_WAIT_PRVDATA |
			SDMMC_CMD_UPD_CLK_ONLY | SDMMC_CMD_START));

	tout = 1000;
	do {
		if (tout-- < 0) {
			FUNC3(sc->dev, "Failed to update clk");
			return (1);
		}
	} while (FUNC1(sc, SDMMC_CMD) & SDMMC_CMD_START);

	FUNC2(sc, SDMMC_CLKENA, (SDMMC_CLKENA_CCLK_EN | SDMMC_CLKENA_LP));
	FUNC2(sc, SDMMC_CMD, SDMMC_CMD_WAIT_PRVDATA |
			SDMMC_CMD_UPD_CLK_ONLY | SDMMC_CMD_START);

	tout = 1000;
	do {
		if (tout-- < 0) {
			FUNC3(sc->dev, "Failed to enable clk\n");
			return (1);
		}
	} while (FUNC1(sc, SDMMC_CMD) & SDMMC_CMD_START);

	return (0);
}