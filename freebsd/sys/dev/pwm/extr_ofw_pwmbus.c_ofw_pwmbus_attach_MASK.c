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
struct TYPE_3__ {scalar_t__ nchannels; int /*<<< orphan*/ * dev; } ;
struct ofw_pwmbus_softc {TYPE_1__ base; } ;
struct TYPE_4__ {scalar_t__ pi_channel; } ;
struct ofw_pwmbus_ivars {TYPE_2__ base; int /*<<< orphan*/  devinfo; } ;
typedef  scalar_t__ phandle_t ;
typedef  scalar_t__ pcell_t ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  chan ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,char*,scalar_t__*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ofw_pwmbus_ivars* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 struct ofw_pwmbus_softc* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct ofw_pwmbus_softc *sc;
	struct ofw_pwmbus_ivars *ivars;
	phandle_t node;
	device_t child, parent;
	pcell_t  chan;
	bool any_children;

	sc = FUNC11(dev);
	sc->base.dev = dev;
	parent = FUNC10(dev);

	if (FUNC3(parent, &sc->base.nchannels) != 0 ||
	    sc->base.nchannels == 0) {
		FUNC12(dev, "No channels on parent %s\n",
		    FUNC9(parent));
		return (ENXIO);
	}

	/*
	 * Attach the children found in the fdt node of the hardware controller.
	 * Hardware controllers must implement the ofw_bus_get_node method so
	 * that our call to ofw_bus_get_node() gets back the controller's node.
	 */
	any_children = false;
	node = FUNC14(dev);
	for (node = FUNC0(node); node != 0; node = FUNC2(node)) {
		/*
		 * The child has to have a reg property; its value is the
		 * channel number so range-check it.
		 */
		if (FUNC1(node, "reg", &chan, sizeof(chan)) == -1)
			continue;
		if (chan >= sc->base.nchannels)
			continue;

		if ((child = FUNC15(dev, 0, NULL, -1)) == NULL)
			continue;

		ivars = FUNC8(child);
		ivars->base.pi_channel = chan;

		/* Set up the standard ofw devinfo. */
		if (FUNC13(&ivars->devinfo, node) != 0) {
			FUNC7(dev, child);
			continue;
		}
		any_children = true;
	}

	/*
	 * If we didn't find any children in the fdt data, add a pwmc(4) child
	 * for each channel, like the base pwmbus does.  The idea is that if
	 * there is any fdt data, then we do exactly what it says and nothing
	 * more, otherwise we just provide generic userland access to all the
	 * pwm channels that exist like the base pwmbus's attach code does.
	 */
	if (!any_children) {
		for (chan = 0; chan < sc->base.nchannels; ++chan) {
			child = FUNC15(dev, 0, "pwmc", -1);
			if (child == NULL) {
				FUNC12(dev, "failed to add pwmc child "
				    " device for channel %u\n", chan);
				continue;
			}
			ivars = FUNC8(child);
			ivars->base.pi_channel = chan;
		}
	}
	FUNC4(dev);
	FUNC6(dev);

	return (FUNC5(dev));
}