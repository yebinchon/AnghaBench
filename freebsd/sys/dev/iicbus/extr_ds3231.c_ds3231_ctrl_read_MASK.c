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
struct ds3231_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS3231_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct ds3231_softc *sc)
{
	int error;

	error = FUNC1(sc->sc_dev, DS3231_CONTROL, &sc->sc_ctrl);
	if (error) {
		FUNC0(sc->sc_dev, "cannot read from RTC.\n");
		return (error);
	}
	return (0);
}