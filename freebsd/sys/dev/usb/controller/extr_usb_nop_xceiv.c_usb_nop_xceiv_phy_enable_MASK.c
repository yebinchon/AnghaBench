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
struct usb_nop_xceiv_softc {scalar_t__ clk_freq; scalar_t__ vcc_supply; int /*<<< orphan*/  clk; } ;
struct phynode {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SET_ROUND_ANY ; 
 int ENXIO ; 
 int ERANGE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct usb_nop_xceiv_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct phynode*) ; 
 intptr_t FUNC6 (struct phynode*) ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 

__attribute__((used)) static int
FUNC9(struct phynode *phynode, bool enable)
{
	struct usb_nop_xceiv_softc *sc;
	device_t dev;
	intptr_t phy;
	int error;

	dev = FUNC5(phynode);
	phy = FUNC6(phynode);
	sc = FUNC3(dev);

	if (phy != 0)
		return (ERANGE);

	/* Enable the phy clock */
	if (sc->clk_freq != 0) {
		if (enable) {
			error = FUNC2(sc->clk, sc->clk_freq,
			  CLK_SET_ROUND_ANY);
			if (error != 0) {
				FUNC4(dev, "Cannot set clock to %dMhz\n",
				  sc->clk_freq);
				goto fail;
			}

			error = FUNC1(sc->clk);
		} else
			error = FUNC0(sc->clk);

		if (error != 0) {
			FUNC4(dev, "Cannot %sable the clock\n",
			    enable ? "En" : "Dis");
			goto fail;
		}
	}
	if (sc->vcc_supply) {
		if (enable)
			error = FUNC8(sc->vcc_supply);
		else
			error = FUNC7(sc->vcc_supply);
		if (error != 0) {
			FUNC4(dev, "Cannot %sable the regulator\n",
			    enable ? "En" : "Dis");
			goto fail;
		}
	}

	return (0);

fail:
	return (ENXIO);
}