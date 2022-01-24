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
struct mmc_softc {int /*<<< orphan*/  dev; } ;
typedef  enum mmc_vccq { ____Placeholder_mmc_vccq } mmc_vccq ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SD_MMC_CARD_ID_FREQUENCY ; 
 int /*<<< orphan*/  bus_timing_normal ; 
 int /*<<< orphan*/  bus_width_1 ; 
 int /*<<< orphan*/  cs_dontcare ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opendrain ; 
 int /*<<< orphan*/  power_on ; 
 int /*<<< orphan*/  power_up ; 
 int vccq_120 ; 
 int vccq_330 ; 

__attribute__((used)) static void
FUNC13(struct mmc_softc *sc)
{
	device_t dev;
	enum mmc_vccq vccq;

	dev = sc->dev;
	FUNC10(dev, FUNC0(FUNC2(dev)));
	FUNC3(dev, opendrain);
	FUNC5(dev, cs_dontcare);
	FUNC4(dev, bus_width_1);
	FUNC7(dev, power_up);
	FUNC6(dev, 0);
	FUNC12(dev);
	for (vccq = vccq_330; ; vccq--) {
		FUNC9(dev, vccq);
		if (FUNC11(dev) == 0 || vccq == vccq_120)
			break;
	}
	FUNC1(1);

	FUNC6(dev, SD_MMC_CARD_ID_FREQUENCY);
	FUNC8(dev, bus_timing_normal);
	FUNC7(dev, power_on);
	FUNC12(dev);
	FUNC1(2);
}