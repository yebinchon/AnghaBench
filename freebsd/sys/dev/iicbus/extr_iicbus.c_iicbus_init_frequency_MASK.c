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
struct iicbus_softc {int bus_freq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RW ; 
 int CTLFLAG_TUN ; 
 struct iicbus_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 

void
FUNC8(device_t dev, u_int bus_freq)
{
	struct iicbus_softc *sc = FUNC0(dev);

	/*
	 * If a bus frequency value was passed in, use it.  Otherwise initialize
	 * it first to the standard i2c 100KHz frequency, then override that
	 * from a hint if one exists.
	 */
	if (bus_freq > 0)
		sc->bus_freq = bus_freq;
	else {
		sc->bus_freq = 100000;
		FUNC7(FUNC3(dev), FUNC6(dev),
		    "frequency", (int *)&sc->bus_freq);
	}
	/*
	 * Set up the sysctl that allows the bus frequency to be changed.
	 * It is flagged as a tunable so that the user can set the value in
	 * loader(8), and that will override any other setting from any source.
	 * The sysctl tunable/value is the one most directly controlled by the
	 * user and thus the one that always takes precedence.
	 */
	FUNC1(FUNC4(dev),
	    FUNC2(FUNC5(dev)),
	    OID_AUTO, "frequency", CTLFLAG_RW | CTLFLAG_TUN, &sc->bus_freq,
	    sc->bus_freq, "Bus frequency in Hz");
}