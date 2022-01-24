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
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct jz4780_mmc_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_clk; } ;

/* Variables and functions */
 int FUNC0 (struct jz4780_mmc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jz4780_mmc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  JZ_MSC_CLKRT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct jz4780_mmc_softc*) ; 

__attribute__((used)) static int
FUNC5(struct jz4780_mmc_softc *sc, uint32_t freq)
{
	uint64_t rate;
	uint32_t clk_freq;
	int err, div;

	err = FUNC4(sc);
	if (err != 0)
		return (err);

	FUNC2(sc->sc_clk, &rate);
	clk_freq = (uint32_t)rate;

	div = 0;
	while (clk_freq > freq) {
		div++;
		clk_freq >>= 1;
	}
	if (div >= 7)
		div = 7;
#if defined(JZ_MMC_DEBUG)
	if (div != JZ_MMC_READ_4(sc, JZ_MSC_CLKRT))
		device_printf(sc->sc_dev,
		    "UPDATE_IOS: clk -> %u\n", clk_freq);
#endif
	FUNC1(sc, JZ_MSC_CLKRT, div);
	return (0);
}