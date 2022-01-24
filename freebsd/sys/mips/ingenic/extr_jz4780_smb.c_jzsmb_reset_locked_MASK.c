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
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int u_char ;
struct jzsmb_softc {int bus_freq; int i2c_freq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  JZSMB_HCNT_BASE ; 
 int JZSMB_HCNT_MIN ; 
 int JZSMB_HOLD_TIME_FAST ; 
 int JZSMB_HOLD_TIME_STANDARD ; 
 int /*<<< orphan*/  JZSMB_LCNT_BASE ; 
 int JZSMB_LCNT_MIN ; 
 int JZSMB_PERIOD_MAX_FAST ; 
 int JZSMB_PERIOD_MAX_STANDARD ; 
 int JZSMB_PERIOD_MIN_FAST ; 
 int JZSMB_PERIOD_MIN_STANDARD ; 
 int JZSMB_SETUP_TIME_FAST ; 
 int JZSMB_SETUP_TIME_STANDARD ; 
#define  JZSMB_SPEED_FAST 129 
#define  JZSMB_SPEED_STANDARD 128 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  SMBCON ; 
 int SMBCON_MD ; 
 int SMBCON_REST ; 
 int SMBCON_SLVDIS ; 
 int SMBCON_SPD_FAST ; 
 int SMBCON_SPD_STANDARD ; 
 int /*<<< orphan*/  SMBFHCNT ; 
 int /*<<< orphan*/  SMBFLCNT ; 
 int /*<<< orphan*/  SMBINTM ; 
 int /*<<< orphan*/  SMBSDAHD ; 
 int SMBSDAHD_HDENB ; 
 int /*<<< orphan*/  SMBSDASU ; 
 int /*<<< orphan*/  SMBSHCNT ; 
 int /*<<< orphan*/  SMBSLCNT ; 
 int /*<<< orphan*/  SMBTAR ; 
 int /*<<< orphan*/  FUNC2 (struct jzsmb_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct jzsmb_softc*,int /*<<< orphan*/ ,int) ; 
 struct jzsmb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct jzsmb_softc*,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev, u_char addr)
{
	struct jzsmb_softc *sc;
	uint16_t con;
	uint32_t period;
	int hcnt, lcnt, setup_time, hold_time;

	sc = FUNC4(dev);

	FUNC2(sc);

	/* Setup master mode operation */

	/* Disable SMB */
	FUNC5(sc, 0);

	/* Disable interrupts */
	FUNC3(sc, SMBINTM, 0);

	/* Set supported speed mode and expected SCL frequency */
	period = sc->bus_freq / sc->i2c_freq;
	con = SMBCON_REST | SMBCON_SLVDIS | SMBCON_MD;
	switch (sc->i2c_freq) {
	case JZSMB_SPEED_STANDARD:
		con |= SMBCON_SPD_STANDARD;
		setup_time = JZSMB_SETUP_TIME_STANDARD;
		hold_time = JZSMB_HOLD_TIME_STANDARD;
		hcnt = (period * JZSMB_PERIOD_MIN_STANDARD) /
		    (JZSMB_PERIOD_MAX_STANDARD + JZSMB_PERIOD_MIN_STANDARD);
		lcnt = period - hcnt;
		hcnt = FUNC0(hcnt - JZSMB_HCNT_BASE, JZSMB_HCNT_MIN);
		lcnt = FUNC0(lcnt - JZSMB_LCNT_BASE, JZSMB_LCNT_MIN);
		FUNC3(sc, SMBCON, con);
		FUNC3(sc, SMBSHCNT, hcnt);
		FUNC3(sc, SMBSLCNT, lcnt);
		break;
	case JZSMB_SPEED_FAST:
		con |= SMBCON_SPD_FAST;
		setup_time = JZSMB_SETUP_TIME_FAST;
		hold_time = JZSMB_HOLD_TIME_FAST;
		hcnt = (period * JZSMB_PERIOD_MIN_FAST) /
		    (JZSMB_PERIOD_MAX_FAST + JZSMB_PERIOD_MIN_FAST);
		lcnt = period - hcnt;
		hcnt = FUNC0(hcnt - JZSMB_HCNT_BASE, JZSMB_HCNT_MIN);
		lcnt = FUNC0(lcnt - JZSMB_LCNT_BASE, JZSMB_LCNT_MIN);
		FUNC3(sc, SMBCON, con);
		FUNC3(sc, SMBFHCNT, hcnt);
		FUNC3(sc, SMBFLCNT, lcnt);
		break;
	default:
		return (EINVAL);
	}

	setup_time = ((setup_time * sc->bus_freq / 1000) / 1000000) + 1;
	setup_time = FUNC1(1, FUNC0(255, setup_time));
	FUNC3(sc, SMBSDASU, setup_time);

	hold_time = ((hold_time * sc->bus_freq / 1000) / 1000000) - 1;
	hold_time = FUNC0(255, hold_time);
	if (hold_time >= 0)
		FUNC3(sc, SMBSDAHD, hold_time | SMBSDAHD_HDENB);
	else
		FUNC3(sc, SMBSDAHD, 0);

	FUNC3(sc, SMBTAR, addr >> 1);

	if (addr != 0) {
		/* Enable SMB */
		FUNC5(sc, 1);
	}

	return (0);
}