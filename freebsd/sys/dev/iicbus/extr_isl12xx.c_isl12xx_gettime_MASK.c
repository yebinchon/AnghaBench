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
struct time_regs {int hour; int /*<<< orphan*/  year; int /*<<< orphan*/  month; int /*<<< orphan*/  day; int /*<<< orphan*/  min; int /*<<< orphan*/  sec; } ;
struct isl12xx_softc {int use_ampm; int /*<<< orphan*/  dev; int /*<<< orphan*/  busdev; } ;
struct bcd_clocktime {int hour; int ispm; int /*<<< orphan*/  year; int /*<<< orphan*/  mon; int /*<<< orphan*/  day; int /*<<< orphan*/  min; int /*<<< orphan*/  sec; scalar_t__ nsec; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_DBG_READ ; 
 int EINVAL ; 
 int /*<<< orphan*/  IIC_WAIT ; 
 int ISL12XX_24HR_FLAG ; 
 int ISL12XX_PM_FLAG ; 
 int /*<<< orphan*/  ISL12XX_SC_REG ; 
 int /*<<< orphan*/  ISL12XX_SR_REG ; 
 int ISL12XX_SR_RTCF ; 
 int ISL12xx_12HR_MASK ; 
 int ISL12xx_24HR_MASK ; 
 int /*<<< orphan*/  WAITFLAGS ; 
 int FUNC0 (struct bcd_clocktime*,struct timespec*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bcd_clocktime*) ; 
 struct isl12xx_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct time_regs*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct isl12xx_softc*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC7(device_t dev, struct timespec *ts)
{
	struct isl12xx_softc *sc = FUNC2(dev);
	struct bcd_clocktime bct;
	struct time_regs tregs;
	int err;
	uint8_t hourmask, sreg;

	/*
	 * Read the status and time registers.
	 */
	if ((err = FUNC4(sc->busdev, sc->dev, IIC_WAIT)) == 0) {
		if ((err = FUNC6(sc, ISL12XX_SR_REG, &sreg)) == 0) {
			err = FUNC5(sc->dev, ISL12XX_SC_REG, &tregs,
			    sizeof(tregs), WAITFLAGS);
		}
		FUNC3(sc->busdev, sc->dev);
	}
	if (err != 0)
		return (err);

	/* If power failed, we can't provide valid time. */
	if (sreg & ISL12XX_SR_RTCF)
		return (EINVAL);

	/* If chip is in AM/PM mode remember that for when we set time. */
	if (tregs.hour & ISL12XX_24HR_FLAG) {
		hourmask = ISL12xx_24HR_MASK;
	} else {
		sc->use_ampm = true;
		hourmask = ISL12xx_12HR_MASK;
	}

	bct.nsec = 0;
	bct.sec  = tregs.sec;
	bct.min  = tregs.min;
	bct.hour = tregs.hour & hourmask;
	bct.day  = tregs.day;
	bct.mon  = tregs.month;
	bct.year = tregs.year;
	bct.ispm = tregs.hour & ISL12XX_PM_FLAG;

	FUNC1(sc->dev, CLOCK_DBG_READ, &bct); 
	return (FUNC0(&bct, ts, sc->use_ampm));
}