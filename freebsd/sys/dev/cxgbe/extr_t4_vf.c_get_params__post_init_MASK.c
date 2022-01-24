#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ pmask; scalar_t__ nvi; } ;
struct TYPE_4__ {int /*<<< orphan*/  mode; } ;
struct TYPE_6__ {scalar_t__ portvec; TYPE_2__ vfres; TYPE_1__ rss; } ;
struct adapter {TYPE_3__ params; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct adapter*) ; 
 int FUNC2 (struct adapter*) ; 
 int FUNC3 (struct adapter*) ; 
 int FUNC4 (struct adapter*) ; 

__attribute__((used)) static int
FUNC5(struct adapter *sc)
{
	int rc;

	rc = -FUNC3(sc);
	if (rc != 0) {
		FUNC0(sc->dev,
		    "unable to retrieve adapter SGE parameters: %d\n", rc);
		return (rc);
	}

	rc = -FUNC2(sc);
	if (rc != 0) {
		FUNC0(sc->dev,
		    "unable to retrieve adapter RSS parameters: %d\n", rc);
		return (rc);
	}
	if (sc->params.rss.mode != FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL) {
		FUNC0(sc->dev,
		    "unable to operate with global RSS mode %d\n",
		    sc->params.rss.mode);
		return (EINVAL);
	}

	rc = FUNC1(sc);
	if (rc != 0)
		return (rc);

	/*
	 * Grab our Virtual Interface resource allocation, extract the
	 * features that we're interested in and do a bit of sanity testing on
	 * what we discover.
	 */
	rc = -FUNC4(sc);
	if (rc != 0) {
		FUNC0(sc->dev,
		    "unable to get virtual interface resources: %d\n", rc);
		return (rc);
	}

	/*
	 * Check for various parameter sanity issues.
	 */
	if (sc->params.vfres.pmask == 0) {
		FUNC0(sc->dev, "no port access configured/usable!\n");
		return (EINVAL);
	}
	if (sc->params.vfres.nvi == 0) {
		FUNC0(sc->dev,
		    "no virtual interfaces configured/usable!\n");
		return (EINVAL);
	}
	sc->params.portvec = sc->params.vfres.pmask;

	return (0);
}