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
struct lm75_softc {scalar_t__ sc_hwtype; int /*<<< orphan*/  enum_hook; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int CTLTYPE_STRING ; 
 int CTLTYPE_UINT ; 
 scalar_t__ HWTYPE_LM75A ; 
 int /*<<< orphan*/  LM75_TEMP ; 
 int /*<<< orphan*/  LM75_THYST ; 
 int /*<<< orphan*/  LM75_TOS ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC1 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct lm75_softc* FUNC3 (scalar_t__) ; 
 struct sysctl_ctx_list* FUNC4 (scalar_t__) ; 
 struct sysctl_oid* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*) ; 
 int /*<<< orphan*/  lm75_faults_sysctl ; 
 int /*<<< orphan*/  lm75_mode_sysctl ; 
 int /*<<< orphan*/  lm75_pol_sysctl ; 
 int /*<<< orphan*/  lm75_shutdown_sysctl ; 
 int /*<<< orphan*/  lm75_temp_sysctl ; 
 scalar_t__ FUNC7 (struct lm75_softc*) ; 

__attribute__((used)) static void
FUNC8(void *xdev)
{
	device_t dev;
	struct lm75_softc *sc;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree_node;
	struct sysctl_oid_list *tree;

	dev = (device_t)xdev;
	sc = FUNC3(dev);
	ctx = FUNC4(dev);
	tree_node = FUNC5(dev);
	tree = FUNC1(tree_node);

	FUNC2(&sc->enum_hook);

	/*
	 * Detect the kind of chip we are attaching to.
	 * This may not work for LM75 clones.
	 */
	if (FUNC7(sc) != 0) {
		FUNC6(dev, "cannot read from sensor.\n");
		return;
	}
	if (sc->sc_hwtype == HWTYPE_LM75A)
		FUNC6(dev,
		    "LM75A type sensor detected (11bits resolution).\n");

	/* Temperature. */
	FUNC0(ctx, tree, OID_AUTO, "temperature",
	    CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE, dev, LM75_TEMP,
	    lm75_temp_sysctl, "IK", "Current temperature");
	FUNC0(ctx, tree, OID_AUTO, "thyst",
	    CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_MPSAFE, dev, LM75_THYST,
	    lm75_temp_sysctl, "IK", "Hysteresis temperature");
	FUNC0(ctx, tree, OID_AUTO, "tos",
	    CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_MPSAFE, dev, LM75_TOS,
	    lm75_temp_sysctl, "IK", "Overtemperature");

	/* Configuration parameters. */
	FUNC0(ctx, tree, OID_AUTO, "faults",
	    CTLFLAG_RW | CTLTYPE_UINT | CTLFLAG_MPSAFE, dev, 0,
	    lm75_faults_sysctl, "IU", "LM75 fault queue");
	FUNC0(ctx, tree, OID_AUTO, "mode",
	    CTLFLAG_RW | CTLTYPE_STRING | CTLFLAG_MPSAFE, dev, 0,
	    lm75_mode_sysctl, "A", "LM75 mode");
	FUNC0(ctx, tree, OID_AUTO, "polarity",
	    CTLFLAG_RW | CTLTYPE_STRING | CTLFLAG_MPSAFE, dev, 0,
	    lm75_pol_sysctl, "A", "LM75 OS polarity");
	FUNC0(ctx, tree, OID_AUTO, "shutdown",
	    CTLFLAG_RW | CTLTYPE_UINT | CTLFLAG_MPSAFE, dev, 0,
	    lm75_shutdown_sysctl, "IU", "LM75 shutdown");
}