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
struct owc_gpiobus_softc {int dummy; } ;
struct ow_timing {int t_pdl; scalar_t__ t_pdh; scalar_t__ t_rsth; scalar_t__ t_rstl; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int EIO ; 
 int FUNC1 (struct owc_gpiobus_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct owc_gpiobus_softc*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct owc_gpiobus_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct owc_gpiobus_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct owc_gpiobus_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct owc_gpiobus_softc*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct owc_gpiobus_softc* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev, struct ow_timing *t, int *bit)
{
	struct owc_gpiobus_softc *sc;
	int error;
	int buf = -1;

	sc = FUNC9(dev);
	error = FUNC1(sc);
	if (error != 0)
		return (error);

	/*
	 * Read the current state of the bus. The steady state of an idle bus is
	 * high. Badly wired buses that are missing the required pull up, or
	 * that have a short circuit to ground cause all kinds of mischief when
	 * we try to read them later. Return EIO and release the bus if the bus
	 * is currently low.
	 */
	FUNC3(sc);
	FUNC2(sc, &buf);
	if (buf == 0) {
		*bit = -1;
		FUNC6(sc);
		return (EIO);
	}

	FUNC7();

	/* Force low */
	FUNC5(sc);
	FUNC4(sc);
	FUNC0(t->t_rstl);

	/* Allow resistor to float line high and then wait for reset pulse */
	FUNC3(sc);
	FUNC0(t->t_pdh + t->t_pdl / 2);

	/* Read presence pulse  */
	FUNC2(sc, &buf);
	*bit = !!buf;

	FUNC8();

	FUNC0(t->t_rsth - (t->t_pdh + t->t_pdl / 2));	/* Timing not critical for this one */

	/*
	 * Read the state of the bus after we've waited past the end of the rest
	 * window. It should return to high. If it is low, then we have some
	 * problem and should abort the reset.
	 */
	FUNC2(sc, &buf);
	if (buf == 0) {
		*bit = -1;
		FUNC6(sc);
		return (EIO);
	}

	FUNC6(sc);

	return (0);
}