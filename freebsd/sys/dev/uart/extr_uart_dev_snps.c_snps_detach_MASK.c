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
struct snps_softc {int /*<<< orphan*/ * reset; int /*<<< orphan*/ * apb_pclk; int /*<<< orphan*/ * baudclk; } ;
typedef  int /*<<< orphan*/ * hwreset_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/ * clk_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct snps_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
#ifdef EXT_RESOURCES
	struct snps_softc *sc;
	clk_t baudclk, apb_pclk;
	hwreset_t reset;
#endif
	int error;

#ifdef EXT_RESOURCES
	sc = device_get_softc(dev);
	baudclk = sc->baudclk;
	apb_pclk = sc->apb_pclk;
	reset = sc->reset;
#endif

	error = FUNC5(dev);
	if (error != 0)
		return (error);

#ifdef EXT_RESOURCES
	if (reset != NULL) {
		error = hwreset_assert(reset);
		if (error != 0) {
			device_printf(dev, "cannot assert reset\n");
			return (error);
		}
		hwreset_release(reset);
	}
	if (apb_pclk != NULL) {
		error = clk_release(apb_pclk);
		if (error != 0) {
			device_printf(dev, "cannot release peripheral clock\n");
			return (error);
		}
	}
	if (baudclk != NULL) {
		error = clk_release(baudclk);
		if (error != 0) {
			device_printf(dev, "cannot release baud clock\n");
			return (error);
		}
	}
#endif

	return (0);
}