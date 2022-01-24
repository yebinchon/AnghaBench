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
struct timespec {int /*<<< orphan*/  tv_sec; } ;
struct ds3231_softc {int sc_status; scalar_t__ sc_last_c; scalar_t__ sc_use_ampm; int /*<<< orphan*/  sc_dev; } ;
struct bcd_clocktime {int sec; int min; int hour; int day; int dow; int mon; int year; scalar_t__ ispm; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_DBG_WRITE ; 
 int DS3231_C_MASK ; 
 size_t DS3231_DATE ; 
 size_t DS3231_HOUR ; 
 int DS3231_HOUR_IS_PM ; 
 int DS3231_HOUR_USE_AMPM ; 
 size_t DS3231_MINS ; 
 size_t DS3231_MONTH ; 
 size_t DS3231_SECS ; 
 int DS3231_STATUS_OSF ; 
 size_t DS3231_WEEKDAY ; 
 size_t DS3231_YEAR ; 
 int /*<<< orphan*/  IIC_INTRWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bcd_clocktime*) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec*,struct bcd_clocktime*,scalar_t__) ; 
 struct ds3231_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct ds3231_softc*) ; 
 int FUNC5 (struct ds3231_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,size_t,int*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static int
FUNC8(device_t dev, struct timespec *ts)
{
	int error;
	struct bcd_clocktime bct;
	struct ds3231_softc *sc;
	uint8_t data[7];
	uint8_t pmflags;

	sc = FUNC2(dev);

	/*
	 * We request a timespec with no resolution-adjustment.  That also
	 * disables utc adjustment, so apply that ourselves.
	 */
	ts->tv_sec -= FUNC7();
	FUNC1(ts, &bct, sc->sc_use_ampm);
	FUNC0(sc->sc_dev, CLOCK_DBG_WRITE, &bct); 

	/* If the chip is in AM/PM mode, adjust hour and set flags as needed. */
	if (sc->sc_use_ampm) {
		pmflags = DS3231_HOUR_USE_AMPM;
		if (bct.ispm)
			pmflags |= DS3231_HOUR_IS_PM;
	} else
		pmflags = 0;

	data[DS3231_SECS]    = bct.sec;
	data[DS3231_MINS]    = bct.min;
	data[DS3231_HOUR]    = bct.hour | pmflags;
	data[DS3231_DATE]    = bct.day;
	data[DS3231_WEEKDAY] = bct.dow + 1;
	data[DS3231_MONTH]   = bct.mon;
	data[DS3231_YEAR]    = bct.year & 0xff;
	if (sc->sc_last_c)
		data[DS3231_MONTH] |= DS3231_C_MASK;

	/* Write the time back to RTC. */
	error = FUNC6(dev, DS3231_SECS, data, sizeof(data),
	    IIC_INTRWAIT);
	if (error != 0) {
		FUNC3(dev, "cannot write to RTC.\n");
		return (error);
	}

	/*
	 * Unlike most hardware, the osc-was-stopped bit does not clear itself
	 * after setting the time, it has to be manually written to zero.
	 */
	if (sc->sc_status & DS3231_STATUS_OSF) {
		if ((error = FUNC4(sc)) != 0) {
			FUNC3(dev, "cannot read from RTC.\n");
			return (error);
		}
		sc->sc_status &= ~DS3231_STATUS_OSF;
		if ((error = FUNC5(sc, 0, 0)) != 0) {
			FUNC3(dev, "cannot write to RTC.\n");
			return (error);
		}
	}

	return (error);
}