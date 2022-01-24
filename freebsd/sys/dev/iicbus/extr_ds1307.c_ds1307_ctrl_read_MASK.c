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
struct ds1307_softc {int /*<<< orphan*/  sc_dev; scalar_t__ sc_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS1307_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int
FUNC2(struct ds1307_softc *sc)
{
	int error;

	sc->sc_ctrl = 0;
	error = FUNC1(sc->sc_dev, DS1307_CONTROL, &sc->sc_ctrl);
	if (error) {
		FUNC0(sc->sc_dev, "cannot read from RTC.\n");
		return (error);
	}

	return (0);
}