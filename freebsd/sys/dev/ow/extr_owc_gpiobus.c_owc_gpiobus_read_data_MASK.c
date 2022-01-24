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
struct ow_timing {int t_rdv; int t_slot; int t_rec; int /*<<< orphan*/  t_lowr; } ;
typedef  int sbintime_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct owc_gpiobus_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct owc_gpiobus_softc*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct owc_gpiobus_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct owc_gpiobus_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct owc_gpiobus_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct owc_gpiobus_softc*) ; 
 int SBT_1US ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct owc_gpiobus_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 () ; 

__attribute__((used)) static int
FUNC11(device_t dev, struct ow_timing *t, int *bit)
{
	struct owc_gpiobus_softc *sc;
	int error, sample;
	sbintime_t then, now;

	sc = FUNC9(dev);
	error = FUNC1(sc);
	if (error != 0)
		return (error);

	FUNC7();

	/* Force low for t_lowr microseconds */
	then = FUNC10();
	FUNC5(sc);
	FUNC4(sc);
	FUNC0(t->t_lowr);

	/*
	 * Slave is supposed to hold the line low for t_rdv microseconds for 0
	 * and immediately float it high for a 1. This is measured from the
	 * master's pushing the line low.
	 */
	FUNC3(sc);
	do {
		now = FUNC10();
		FUNC2(sc, &sample);
	} while (now - then < (t->t_rdv + 2) * SBT_1US && sample == 0);
	FUNC8();

	if (now - then < t->t_rdv * SBT_1US)
		*bit = 1;
	else
		*bit = 0;

	/* Wait out the rest of t_slot */
	do {
		now = FUNC10();
	} while (now - then < (t->t_slot + t->t_rec) * SBT_1US);

	FUNC6(sc);

	return (error);
}