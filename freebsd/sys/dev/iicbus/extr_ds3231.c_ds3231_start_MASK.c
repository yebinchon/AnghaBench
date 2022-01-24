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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ds3231_softc {int sc_status; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  enum_hook; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCKF_SETTIME_NO_ADJ ; 
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int CTLTYPE_STRING ; 
 int CTLTYPE_UINT ; 
 int DS3231_STATUS_OSF ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct ds3231_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC1 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ds3231_softc* FUNC5 (scalar_t__) ; 
 struct sysctl_ctx_list* FUNC6 (scalar_t__) ; 
 struct sysctl_oid* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ds3231_bbsqw_sysctl ; 
 int /*<<< orphan*/  ds3231_conv_sysctl ; 
 scalar_t__ FUNC9 (struct ds3231_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ds3231_softc*) ; 
 int /*<<< orphan*/  ds3231_en32khz_sysctl ; 
 int /*<<< orphan*/  ds3231_sqw_freq_sysctl ; 
 int /*<<< orphan*/  ds3231_sqw_mode_sysctl ; 
 scalar_t__ FUNC11 (struct ds3231_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct ds3231_softc*,int,int) ; 
 int /*<<< orphan*/  ds3231_temp_sysctl ; 

__attribute__((used)) static void
FUNC13(void *xdev)
{
	device_t dev;
	struct ds3231_softc *sc;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree_node;
	struct sysctl_oid_list *tree;

	dev = (device_t)xdev;
	sc = FUNC5(dev);
	ctx = FUNC6(dev);
	tree_node = FUNC7(dev);
	tree = FUNC1(tree_node);

	FUNC4(&sc->enum_hook);
	if (FUNC9(sc) != 0)
		return;
	if (FUNC11(sc) != 0)
		return;
	/*
	 * Warn if the clock stopped, but don't restart it until the first
	 * clock_settime() call.
	 */
	if (sc->sc_status & DS3231_STATUS_OSF) {
		FUNC8(sc->sc_dev,
		    "WARNING: RTC clock stopped, check the battery.\n");
	}

	/*
	 * Ack any pending alarm interrupts and clear the EOSC bit to ensure the
	 * clock runs even when on battery power.  Do not give up if these
	 * writes fail, because a factory-fresh chip is in a special mode that
	 * disables much of the chip to save battery power, and the only thing
	 * that gets it out of that mode is writing to the time registers.  In
	 * these pristine chips, the EOSC and alarm bits are zero already, so
	 * the first valid write of time will get everything running properly.
	 */
	FUNC12(sc, 1, 1);
	FUNC10(sc);

	/* Temperature. */
	FUNC0(ctx, tree, OID_AUTO, "temperature",
	    CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE, sc, 0,
	    ds3231_temp_sysctl, "IK", "Current temperature");
	/* Configuration parameters. */
	FUNC0(ctx, tree, OID_AUTO, "temp_conv",
	    CTLFLAG_RW | CTLTYPE_UINT | CTLFLAG_MPSAFE, sc, 0,
	    ds3231_conv_sysctl, "IU",
	    "DS3231 start a new temperature converstion");
	FUNC0(ctx, tree, OID_AUTO, "bbsqw",
	    CTLFLAG_RW | CTLTYPE_UINT | CTLFLAG_MPSAFE, sc, 0,
	    ds3231_bbsqw_sysctl, "IU",
	    "DS3231 battery-backed square-wave output enable");
	FUNC0(ctx, tree, OID_AUTO, "sqw_freq",
	    CTLFLAG_RW | CTLTYPE_UINT | CTLFLAG_MPSAFE, sc, 0,
	    ds3231_sqw_freq_sysctl, "IU",
	    "DS3231 square-wave output frequency");
	FUNC0(ctx, tree, OID_AUTO, "sqw_mode",
	    CTLFLAG_RW | CTLTYPE_STRING | CTLFLAG_MPSAFE, sc, 0,
	    ds3231_sqw_mode_sysctl, "A", "DS3231 SQW output mode control");
	FUNC0(ctx, tree, OID_AUTO, "32khz_enable",
	    CTLFLAG_RW | CTLTYPE_UINT | CTLFLAG_MPSAFE, sc, 0,
	    ds3231_en32khz_sysctl, "IU", "DS3231 enable the 32kHz output");

	/*
	 * Register as a clock with 1 second resolution.  Schedule the
	 * clock_settime() method to be called just after top-of-second;
	 * resetting the time resets top-of-second in the hardware.
	 */
	FUNC2(dev, 1000000, CLOCKF_SETTIME_NO_ADJ);
	FUNC3(dev, 1);
}