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
struct epic_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct epic_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EPIC_LED_ALERT_MASK ; 
 int /*<<< orphan*/  EPIC_LED_ALERT_OFF ; 
 int /*<<< orphan*/  EPIC_LED_ALERT_ON ; 
 int /*<<< orphan*/  EPIC_LED_STATE0 ; 
 int /*<<< orphan*/  FUNC1 (struct epic_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct epic_softc*) ; 

__attribute__((used)) static void
FUNC3(void *arg, int onoff)
{
	struct epic_softc *sc;

	sc = (struct epic_softc *)arg;

	FUNC1(sc);
	FUNC0(sc, EPIC_LED_STATE0, EPIC_LED_ALERT_MASK,
	    onoff ? EPIC_LED_ALERT_ON : EPIC_LED_ALERT_OFF);
	FUNC2(sc);
}