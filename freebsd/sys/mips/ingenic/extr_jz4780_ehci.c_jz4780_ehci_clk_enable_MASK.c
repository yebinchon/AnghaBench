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
struct jz4780_ehci_softc {int /*<<< orphan*/  clk; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct jz4780_ehci_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct jz4780_ehci_softc *sc;
	int err;

	sc = FUNC3(dev);

	err = FUNC1(dev, 0, 0, &sc->clk);
	if (err != 0) {
		FUNC4(dev, "unable to lookup device clock\n");
		return (err);
	}
	err = FUNC0(sc->clk);
	if (err != 0) {
		FUNC4(dev, "unable to enable device clock\n");
		return (err);
	}
	err = FUNC2(sc->clk, 48000000, 0);
	if (err != 0) {
		FUNC4(dev, "unable to set device clock to 48 kHZ\n");
		return (err);
	}
	return (0);
}