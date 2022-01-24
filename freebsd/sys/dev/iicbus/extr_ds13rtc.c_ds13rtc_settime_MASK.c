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
struct time_regs {int hour; int month; int year; int /*<<< orphan*/  wday; int /*<<< orphan*/  day; int /*<<< orphan*/  min; int /*<<< orphan*/  sec; } ;
struct ds13rtc_softc {scalar_t__ osfaddr; scalar_t__ secaddr; scalar_t__ use_century; scalar_t__ use_ampm; int /*<<< orphan*/  dev; scalar_t__ is_binary_counter; } ;
struct bcd_clocktime {int year; int hour; int mon; int /*<<< orphan*/  dow; int /*<<< orphan*/  day; int /*<<< orphan*/  min; int /*<<< orphan*/  sec; scalar_t__ ispm; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_DBG_WRITE ; 
 int DS13xx_B_HOUR_AMPM ; 
 int DS13xx_B_HOUR_PM ; 
 int DS13xx_B_MONTH_CENTURY ; 
 int DS13xx_B_STATUS_OSF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bcd_clocktime*) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec*,struct bcd_clocktime*,scalar_t__) ; 
 struct ds13rtc_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct ds13rtc_softc*,scalar_t__,int*) ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (struct ds13rtc_softc*,scalar_t__,int) ; 
 int FUNC7 (struct ds13rtc_softc*,struct time_regs*) ; 
 int FUNC8 (struct ds13rtc_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev, struct timespec *ts)
{
	struct bcd_clocktime bct;
	struct time_regs tregs;
	struct ds13rtc_softc *sc;
	int err;
	uint8_t cflag, statreg, pmflags;

	sc = FUNC2(dev);

	/*
	 * We request a timespec with no resolution-adjustment.  That also
	 * disables utc adjustment, so apply that ourselves.
	 */
	ts->tv_sec -= FUNC5();

	/* If the chip counts time in binary, store tv_sec and we're done. */
	if (sc->is_binary_counter)
		return (FUNC8(sc, ts->tv_sec));

	FUNC1(ts, &bct, sc->use_ampm);
	FUNC0(sc->dev, CLOCK_DBG_WRITE, &bct); 

	/* If the chip is in AMPM mode deal with the PM flag. */
	pmflags = 0;
	if (sc->use_ampm) {
		pmflags = DS13xx_B_HOUR_AMPM;
		if (bct.ispm)
			pmflags |= DS13xx_B_HOUR_PM;
	}

	/* If the chip has a century bit, set it as needed. */
	cflag = 0;
	if (sc->use_century) {
		if (bct.year >= 2000)
			cflag |= DS13xx_B_MONTH_CENTURY;
	}

	tregs.sec   = bct.sec;
	tregs.min   = bct.min;
	tregs.hour  = bct.hour | pmflags;
	tregs.day   = bct.day;
	tregs.month = bct.mon | cflag;
	tregs.year  = bct.year & 0xff;
	tregs.wday  = bct.dow;

	/*
	 * Set the time.  Reset the OSF bit if it is on and it is not part of
	 * the time registers (in which case writing time resets it).
	 */
	if ((err = FUNC7(sc, &tregs)) != 0)
		goto errout;
	if (sc->osfaddr != sc->secaddr) {
		if ((err = FUNC4(sc, sc->osfaddr, &statreg)) != 0)
			goto errout;
		if (statreg & DS13xx_B_STATUS_OSF) {
			statreg &= ~DS13xx_B_STATUS_OSF;
			err = FUNC6(sc, sc->osfaddr, statreg);
		}
	}

errout:

	if (err != 0)
		FUNC3(dev, "cannot update RTC time\n");

	return (err);
}