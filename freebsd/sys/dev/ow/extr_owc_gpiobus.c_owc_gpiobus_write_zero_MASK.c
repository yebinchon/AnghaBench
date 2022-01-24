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
struct ow_timing {scalar_t__ t_rec; scalar_t__ t_low0; scalar_t__ t_slot; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (struct owc_gpiobus_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct owc_gpiobus_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct owc_gpiobus_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct owc_gpiobus_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct owc_gpiobus_softc*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct owc_gpiobus_softc* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev, struct ow_timing *t)
{
	struct owc_gpiobus_softc *sc;
	int error;

	sc = FUNC8(dev);
	error = FUNC1(sc);
	if (error != 0)
		return (error);

	FUNC6();

	/* Force low */
	FUNC4(sc);
	FUNC3(sc);
	FUNC0(t->t_low0);

	/* Allow resistor to float line high */
	FUNC2(sc);
	FUNC0(t->t_slot - t->t_low0 + t->t_rec);

	FUNC7();

	FUNC5(sc);

	return (0);
}