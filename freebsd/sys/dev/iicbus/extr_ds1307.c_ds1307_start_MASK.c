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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ds1307_softc {int /*<<< orphan*/  sc_dev; scalar_t__ sc_mcp7941x; int /*<<< orphan*/  enum_hook; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCKF_SETTIME_NO_ADJ ; 
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_UINT ; 
 int /*<<< orphan*/  DS1307_SECS ; 
 int DS1307_SECS_CH ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct ds1307_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC1 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ds1307_softc* FUNC5 (scalar_t__) ; 
 struct sysctl_ctx_list* FUNC6 (scalar_t__) ; 
 struct sysctl_oid* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  ds1307_sqw_freq_sysctl ; 
 int /*<<< orphan*/  ds1307_sqw_out_sysctl ; 
 int /*<<< orphan*/  ds1307_sqwe_sysctl ; 

__attribute__((used)) static void
FUNC10(void *xdev)
{
	device_t dev;
	struct ds1307_softc *sc;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree_node;
	struct sysctl_oid_list *tree;
	uint8_t secs;
	uint8_t osc_en;

	dev = (device_t)xdev;
	sc = FUNC5(dev);
	ctx = FUNC6(dev);
	tree_node = FUNC7(dev);
	tree = FUNC1(tree_node);

	FUNC4(&sc->enum_hook);

	/* Check if the oscillator is disabled. */
	if (FUNC9(sc->sc_dev, DS1307_SECS, &secs) != 0) {
		FUNC8(sc->sc_dev, "cannot read from RTC.\n");
		return;
	}
	if (sc->sc_mcp7941x)
		osc_en = 0x80;
	else
		osc_en = 0x00;

	if (((secs & DS1307_SECS_CH) ^ osc_en) != 0) {
		FUNC8(sc->sc_dev,
		    "WARNING: RTC clock stopped, check the battery.\n");
	}

	/* Configuration parameters. */
	FUNC0(ctx, tree, OID_AUTO, "sqwe",
	    CTLFLAG_RW | CTLTYPE_UINT | CTLFLAG_MPSAFE, sc, 0,
	    ds1307_sqwe_sysctl, "IU", "DS1307 square-wave enable");
	FUNC0(ctx, tree, OID_AUTO, "sqw_freq",
	    CTLFLAG_RW | CTLTYPE_UINT | CTLFLAG_MPSAFE, sc, 0,
	    ds1307_sqw_freq_sysctl, "IU",
	    "DS1307 square-wave output frequency");
	FUNC0(ctx, tree, OID_AUTO, "sqw_out",
	    CTLFLAG_RW | CTLTYPE_UINT | CTLFLAG_MPSAFE, sc, 0,
	    ds1307_sqw_out_sysctl, "IU", "DS1307 square-wave output state");

	/*
	 * Register as a clock with 1 second resolution.  Schedule the
	 * clock_settime() method to be called just after top-of-second;
	 * resetting the time resets top-of-second in the hardware.
	 */
	FUNC2(dev, 1000000, CLOCKF_SETTIME_NO_ADJ);
	FUNC3(dev, 1);
}