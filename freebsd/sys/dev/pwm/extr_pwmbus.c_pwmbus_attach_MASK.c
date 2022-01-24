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
typedef  scalar_t__ u_int ;
struct pwmbus_softc {scalar_t__ nchannels; int /*<<< orphan*/ * dev; } ;
struct pwmbus_ivars {scalar_t__ pi_channel; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct pwmbus_ivars* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 struct pwmbus_softc* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct pwmbus_softc *sc;
	struct pwmbus_ivars *ivars;
	device_t child, parent;
	u_int chan;

	sc = FUNC7(dev);
	sc->dev = dev;
	parent = FUNC6(dev);

	if (FUNC0(parent, &sc->nchannels) != 0 ||
	    sc->nchannels == 0) {
		FUNC8(sc->dev, "No channels on parent %s\n",
		    FUNC5(parent));
		return (ENXIO);
	}

	/* Add a pwmc(4) child for each channel. */
	for (chan = 0; chan < sc->nchannels; ++chan) {
		if ((child = FUNC9(sc->dev, 0, "pwmc", -1)) == NULL) {
			FUNC8(dev, "failed to add pwmc child device "
			    "for channel %u\n", chan);
			continue;
		}
		ivars = FUNC4(child);
		ivars->pi_channel = chan;
	}

	FUNC1(dev);
	FUNC3(dev);

	return (FUNC2(dev));
}