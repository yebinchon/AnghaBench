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
typedef  int /*<<< orphan*/  tregs ;
struct timespec {int dummy; } ;
struct time_regs {int day; int hour; int month; int /*<<< orphan*/  min; int /*<<< orphan*/  sec; int /*<<< orphan*/  msec; } ;
struct rtc8583_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  busdev; } ;
struct bcd_clocktime {int nsec; int hour; int day; int mon; int /*<<< orphan*/  year; int /*<<< orphan*/  min; int /*<<< orphan*/  sec; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_DBG_READ ; 
 int EINVAL ; 
 int /*<<< orphan*/  IIC_WAIT ; 
 int /*<<< orphan*/  RTC8583_SC_REG ; 
 int /*<<< orphan*/  RTC8583_USERSRAM_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct bcd_clocktime*,struct timespec*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bcd_clocktime*) ; 
 struct rtc8583_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct time_regs*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtc8583_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtc8583_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev, struct timespec *ts)
{
	struct rtc8583_softc	*sc;
	struct bcd_clocktime	 bct;
	struct time_regs	 tregs;
	uint8_t			 y, ytmp, sreg;
	int 			 err;

	sc = FUNC4(dev);

	/* Read the bcd time registers. */
	if ((err = FUNC7(sc->dev, RTC8583_SC_REG, &tregs, sizeof(tregs),
	    IIC_WAIT)) != 0)
		return (err);

	y = tregs.day >> 6;
	/* Get year from user SRAM */
	FUNC8(sc, RTC8583_USERSRAM_REG,  &sreg);
	
	/* 
	 * Check if year adjustment is required.
	 * RTC has only 2 bits for year value (i.e. maximum is 4 years), so
	 * full year value is stored in user SRAM and updated manually or 
	 * by this code.
	 */
	ytmp = sreg & 0x03;
	if (ytmp != y) {
		/* shift according to difference */
		sreg += y - ytmp;
		
		/* check if overflow happened */
		if (ytmp > y)
			sreg += 4;
		
		if ((err = FUNC6(sc->busdev, sc->dev, IIC_WAIT)) != 0)
			return (err);
		FUNC9(sc, RTC8583_USERSRAM_REG, sreg);
		FUNC5(sc->busdev, sc->dev);
	}

	if (!FUNC10(tregs.msec))
		return (EINVAL);

        /* The 'msec' reg is actually 1/100ths, in bcd.  */
	bct.nsec = FUNC0(tregs.msec) * 10 * 1000 * 1000;
	bct.sec  = tregs.sec;
	bct.min  = tregs.min;
	bct.hour = tregs.hour & 0x3f;
	bct.day  = tregs.day & 0x3f;
	bct.mon  = tregs.month & 0x1f;
	bct.year = FUNC1(sreg % 100);

	FUNC3(sc->dev, CLOCK_DBG_READ, &bct); 
	return (FUNC2(&bct, ts, false));
}