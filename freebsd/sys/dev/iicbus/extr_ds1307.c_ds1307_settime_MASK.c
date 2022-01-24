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
struct ds1307_softc {int /*<<< orphan*/  sc_dev; scalar_t__ sc_mcp7941x; scalar_t__ sc_use_ampm; } ;
struct bcd_clocktime {int sec; int min; int hour; int day; int dow; int mon; int year; scalar_t__ ispm; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_DBG_WRITE ; 
 size_t DS1307_DATE ; 
 size_t DS1307_HOUR ; 
 int DS1307_HOUR_IS_PM ; 
 int DS1307_HOUR_USE_AMPM ; 
 size_t DS1307_MINS ; 
 size_t DS1307_MONTH ; 
 size_t DS1307_SECS ; 
 size_t DS1307_WEEKDAY ; 
 size_t DS1307_YEAR ; 
 int /*<<< orphan*/  IIC_INTRWAIT ; 
 int MCP7941X_MONTH_LPYR ; 
 int MCP7941X_SECS_ST ; 
 int MCP7941X_WEEKDAY_VBATEN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bcd_clocktime*) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*,struct bcd_clocktime*,scalar_t__) ; 
 struct ds1307_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,size_t,int*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static int
FUNC7(device_t dev, struct timespec *ts)
{
	struct bcd_clocktime bct;
	struct ds1307_softc *sc;
	int error, year;
	uint8_t data[7];
	uint8_t pmflags;

	sc = FUNC3(dev);

	/*
	 * We request a timespec with no resolution-adjustment.  That also
	 * disables utc adjustment, so apply that ourselves.
	 */
	ts->tv_sec -= FUNC6();
	FUNC2(ts, &bct, sc->sc_use_ampm);
	FUNC1(sc->sc_dev, CLOCK_DBG_WRITE, &bct);

	/* If the chip is in AM/PM mode, adjust hour and set flags as needed. */
	if (sc->sc_use_ampm) {
		pmflags = DS1307_HOUR_USE_AMPM;
		if (bct.ispm)
			pmflags |= DS1307_HOUR_IS_PM;
	} else
		pmflags = 0;

	data[DS1307_SECS]    = bct.sec;
	data[DS1307_MINS]    = bct.min;
	data[DS1307_HOUR]    = bct.hour | pmflags;
	data[DS1307_DATE]    = bct.day;
	data[DS1307_WEEKDAY] = bct.dow;
	data[DS1307_MONTH]   = bct.mon;
	data[DS1307_YEAR]    = bct.year & 0xff;
	if (sc->sc_mcp7941x) {
		data[DS1307_SECS] |= MCP7941X_SECS_ST;
		data[DS1307_WEEKDAY] |= MCP7941X_WEEKDAY_VBATEN;
		year = FUNC0(bct.year >> 8) * 100 + FUNC0(bct.year & 0xff);
		if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
			data[DS1307_MONTH] |= MCP7941X_MONTH_LPYR;
	}
	/* Write the time back to RTC. */
	error = FUNC5(sc->sc_dev, DS1307_SECS, data, sizeof(data),
	    IIC_INTRWAIT);
	if (error != 0)
		FUNC4(dev, "cannot write to RTC.\n");

	return (error);
}