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
struct timespec {int dummy; } ;
struct ds3231_softc {int sc_status; int sc_use_ampm; int sc_last_c; int sc_year0; int /*<<< orphan*/  sc_dev; } ;
struct bcd_clocktime {int sec; int min; int hour; int day; int mon; int year; int ispm; scalar_t__ nsec; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_DBG_READ ; 
 int DS3231_C_MASK ; 
 size_t DS3231_DATE ; 
 int DS3231_DATE_MASK ; 
 size_t DS3231_HOUR ; 
 int DS3231_HOUR_IS_PM ; 
 int DS3231_HOUR_MASK_12HR ; 
 int DS3231_HOUR_MASK_24HR ; 
 int DS3231_HOUR_USE_AMPM ; 
 size_t DS3231_MINS ; 
 int DS3231_MINS_MASK ; 
 size_t DS3231_MONTH ; 
 int DS3231_MONTH_MASK ; 
 size_t DS3231_SECS ; 
 int DS3231_SECS_MASK ; 
 int DS3231_STATUS_OSF ; 
 size_t DS3231_YEAR ; 
 int DS3231_YEAR_MASK ; 
 int EINVAL ; 
 int /*<<< orphan*/  IIC_INTRWAIT ; 
 int FUNC0 (struct bcd_clocktime*,struct timespec*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bcd_clocktime*) ; 
 struct ds3231_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct ds3231_softc*) ; 
 int FUNC5 (int /*<<< orphan*/ ,size_t,int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, struct timespec *ts)
{
	int c, error;
	struct bcd_clocktime bct;
	struct ds3231_softc *sc;
	uint8_t data[7], hourmask;

	sc = FUNC2(dev);

	/* If the clock halted, we don't have good data. */
	if ((error = FUNC4(sc)) != 0) {
		FUNC3(dev, "cannot read from RTC.\n");
		return (error);
	}
	if (sc->sc_status & DS3231_STATUS_OSF)
		return (EINVAL);

	error = FUNC5(sc->sc_dev, DS3231_SECS, data, sizeof(data),
	    IIC_INTRWAIT);
	if (error != 0) {
		FUNC3(dev, "cannot read from RTC.\n");
		return (error);
	}

	/* If chip is in AM/PM mode remember that. */
	if (data[DS3231_HOUR] & DS3231_HOUR_USE_AMPM) {
		sc->sc_use_ampm = true;
		hourmask = DS3231_HOUR_MASK_12HR;
	} else
		hourmask = DS3231_HOUR_MASK_24HR;

	bct.nsec = 0;
	bct.sec  = data[DS3231_SECS]  & DS3231_SECS_MASK;
	bct.min  = data[DS3231_MINS]  & DS3231_MINS_MASK;
	bct.hour = data[DS3231_HOUR]  & hourmask;
	bct.day  = data[DS3231_DATE]  & DS3231_DATE_MASK;
	bct.mon  = data[DS3231_MONTH] & DS3231_MONTH_MASK;
	bct.year = data[DS3231_YEAR]  & DS3231_YEAR_MASK;
	bct.ispm = data[DS3231_HOUR]  & DS3231_HOUR_IS_PM;

	/*
	 * If the century flag has toggled since we last saw it, there has been
	 * a century rollover.  If this is the first time we're seeing it,
	 * remember the state so we can preserve its polarity on writes.
	 */
	c = (data[DS3231_MONTH] & DS3231_C_MASK) ? 1 : 0;
	if (sc->sc_last_c == -1)
		sc->sc_last_c = c;
	else if (c != sc->sc_last_c) {
		sc->sc_year0 += 0x100;
		sc->sc_last_c = c;
	}
	bct.year |= sc->sc_year0;

	FUNC1(sc->sc_dev, CLOCK_DBG_READ, &bct); 
	return (FUNC0(&bct, ts, sc->sc_use_ampm));
}