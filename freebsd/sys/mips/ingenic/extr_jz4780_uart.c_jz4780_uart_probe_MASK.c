#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct uart_class {int dummy; } ;
struct ofw_compat_data {scalar_t__ ocd_data; } ;
struct TYPE_3__ {struct uart_class* sc_class; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct jz4780_uart_softc {TYPE_2__ ns8250_base; int /*<<< orphan*/  clk_baud; int /*<<< orphan*/  clk_mod; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ bootverbose ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  compat_data ; 
 struct jz4780_uart_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct ofw_compat_data* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct jz4780_uart_softc *sc;
	uint64_t freq;
	int shift;
	int rv;
	const struct ofw_compat_data *cd;

	sc = FUNC3(dev);
	if (!FUNC7(dev))
		return (ENXIO);
	cd = FUNC6(dev, compat_data);
	if (cd->ocd_data == 0)
		return (ENXIO);

	/* Figure out clock setup */
	rv = FUNC1(dev, 0, "module", &sc->clk_mod);
	if (rv != 0) {
		FUNC4(dev, "Cannot get UART clock: %d\n", rv);
		return (ENXIO);
	}
	rv = FUNC0(sc->clk_mod);
	if (rv != 0) {
		FUNC4(dev, "Cannot enable UART clock: %d\n", rv);
		return (ENXIO);
	}
	rv = FUNC1(dev, 0, "baud", &sc->clk_baud);
	if (rv != 0) {
		FUNC4(dev, "Cannot get UART clock: %d\n", rv);
		return (ENXIO);
	}
	rv = FUNC0(sc->clk_baud);
	if (rv != 0) {
		FUNC4(dev, "Cannot enable UART clock: %d\n", rv);
		return (ENXIO);
	}
	rv = FUNC2(sc->clk_baud, &freq);
	if (rv != 0) {
		FUNC4(dev, "Cannot determine UART clock frequency: %d\n", rv);
		return (ENXIO);
	}

	if (bootverbose)
		FUNC4(dev, "got UART clock: %lld\n", freq);
	sc->ns8250_base.base.sc_class = (struct uart_class *)cd->ocd_data;
	shift = FUNC5(dev);
	return (FUNC8(dev, shift, 0, (int)freq, 0, 0, 0));
}