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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  tregs ;
struct timespec {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct time_regs {int day; int /*<<< orphan*/  month; int /*<<< orphan*/  hour; int /*<<< orphan*/  min; int /*<<< orphan*/  sec; int /*<<< orphan*/  msec; } ;
struct rtc8583_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  busdev; } ;
struct bcd_clocktime {int day; int year; int /*<<< orphan*/  mon; int /*<<< orphan*/  hour; int /*<<< orphan*/  min; int /*<<< orphan*/  sec; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_DBG_WRITE ; 
 int /*<<< orphan*/  IIC_WAIT ; 
 int /*<<< orphan*/  RTC8583_SC_REG ; 
 int /*<<< orphan*/  RTC8583_USERSRAM_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bcd_clocktime*) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*,struct bcd_clocktime*,int) ; 
 struct rtc8583_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtc8583_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct time_regs*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 

__attribute__((used)) static int
FUNC10(device_t dev, struct timespec *ts)
{
	struct rtc8583_softc	*sc;
	struct bcd_clocktime 	 bct;
	struct time_regs	 tregs;
	uint8_t			 sreg;
	int 			 err;

	sc = FUNC4(dev);
	ts->tv_sec -= FUNC9();
	FUNC3(ts, &bct, false);
	FUNC2(sc->dev, CLOCK_DBG_WRITE, &bct);

	/* The 'msec' reg is actually 1/100ths, in bcd.  */
	tregs.msec  = FUNC1(ts->tv_nsec / (10 * 1000 * 1000));
	tregs.sec   = bct.sec;
	tregs.min   = bct.min;
	tregs.hour  = bct.hour;
	tregs.day   = bct.day | (bct.year & 0x03 << 6);
	tregs.month = bct.mon;

	if ((err = FUNC6(sc->busdev, sc->dev, IIC_WAIT)) != 0)
		return (err);
	err = FUNC8(sc->dev, RTC8583_SC_REG, &tregs,
	    sizeof(tregs), IIC_WAIT);
	sreg = FUNC0(bct.year & 0xff);
	/* save to year to sram */
	FUNC7(sc, RTC8583_USERSRAM_REG, sreg);
	FUNC5(sc->busdev, sc->dev);

	return (err);
}