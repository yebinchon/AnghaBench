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
typedef  int uint8_t ;
struct isl12xx_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  init_hook; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCKF_SETTIME_NO_ADJ ; 
 int /*<<< orphan*/  ISL12XX_SR_REG ; 
 int ISL12XX_SR_RTCF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct isl12xx_softc*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct isl12xx_softc *sc = arg;
	uint8_t sreg;

	FUNC2(&sc->init_hook);

	/*
	 * Check the clock-stopped/power-fail bit, just so we can report it to
	 * the user at boot time.
	 */
	FUNC4(sc, ISL12XX_SR_REG, &sreg);
	if (sreg & ISL12XX_SR_RTCF) {
		FUNC3(sc->dev,
		    "RTC clock stopped; check battery\n");
	}

	/*
	 * Register as a system realtime clock.
	 */
	FUNC0(sc->dev, 1000000, CLOCKF_SETTIME_NO_ADJ);
	FUNC1(sc->dev, 1);
}