#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct ads111x_softc {TYPE_1__* chipinfo; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  rateidx ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  gainidx ;
typedef  int /*<<< orphan*/  chan ;
struct TYPE_2__ {scalar_t__ numchan; } ;

/* Variables and functions */
 scalar_t__ ADS111x_MAX_CHANNELS ; 
 scalar_t__ DEFAULT_GAINIDX ; 
 scalar_t__ DEFAULT_RATEIDX ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,char*,scalar_t__*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ads111x_softc*,scalar_t__,scalar_t__,scalar_t__) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*,scalar_t__,char*,scalar_t__*) ; 

__attribute__((used)) static void
FUNC8(struct ads111x_softc *sc)
{
	const char *name;
	uint32_t chan, gainidx, num_added, rateidx, unit;
	bool found;

#ifdef FDT
	phandle_t child, node;

	/* Configure any channels that have FDT data. */
	num_added = 0;
	node = ofw_bus_get_node(sc->dev);
	for (child = OF_child(node); child != 0; child = OF_peer(child)) {
		if (OF_getencprop(child, "reg", &chan, sizeof(chan)) == -1)
			continue;
		if (chan >= ADS111x_MAX_CHANNELS)
			continue;
		gainidx = DEFAULT_GAINIDX;
		rateidx = DEFAULT_RATEIDX;
		OF_getencprop(child, "ti,gain", &gainidx, sizeof(gainidx));
		OF_getencprop(child, "ti,datarate", &rateidx, sizeof(rateidx));
		ads111x_setup_channel(sc, chan, gainidx, rateidx);
		++num_added;
	}
#else
	num_added = 0;
#endif

	/* Configure any channels that have hint data. */
	name = FUNC4(sc->dev);
	unit = FUNC5(sc->dev);
	for (chan = 0; chan < sc->chipinfo->numchan; ++chan) {
		found = false;
		gainidx = DEFAULT_GAINIDX;
		rateidx = DEFAULT_RATEIDX;
		if (FUNC7(name, unit, "gain_index", &gainidx) == 0)
			found = true;
		if (FUNC7(name, unit, "rate_index", &gainidx) == 0)
			found = true;
		if (found) {
			FUNC3(sc, chan, gainidx, rateidx);
			++num_added;
		}
	}

	/* If any channels were configured via FDT or hints, we're done. */
	if (num_added > 0)
		return;

	/*
	 * No channel config; add all possible channels using default values,
	 * and let the user configure the ones they want on the fly via sysctl.
	 */
	for (chan = 0; chan < sc->chipinfo->numchan; ++chan) {
		gainidx = DEFAULT_GAINIDX;
		rateidx = DEFAULT_RATEIDX;
		FUNC3(sc, chan, gainidx, rateidx);
	}
}