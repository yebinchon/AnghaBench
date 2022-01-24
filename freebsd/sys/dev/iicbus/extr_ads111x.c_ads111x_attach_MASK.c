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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ads111x_softc {int /*<<< orphan*/  lock; int /*<<< orphan*/  cfgword; int /*<<< orphan*/ * chipinfo; int /*<<< orphan*/  dev; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADS111x_CONF ; 
 int /*<<< orphan*/  ADS111x_CONF_DEFAULT ; 
 int CTLFLAG_RWTUN ; 
 int CTLTYPE_INT ; 
 int ENXIO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct ads111x_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC2 (struct ads111x_softc*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ads111x_sysctl_config ; 
 int /*<<< orphan*/  ads111x_sysctl_hithresh ; 
 int /*<<< orphan*/  ads111x_sysctl_lothresh ; 
 int FUNC4 (struct ads111x_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ads111x_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC6 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct ads111x_softc *sc;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree;
	int err;

	sc = FUNC5(dev);
	sc->dev = dev;
	sc->addr = FUNC9(dev);
	sc->cfgword = ADS111x_CONF_DEFAULT;

	sc->chipinfo = FUNC3(sc->dev);
	if (sc->chipinfo == NULL) {
		FUNC8(dev,
		    "cannot get chipinfo (but it worked during probe)");
		return (ENXIO);
	}

	/* Set the default chip config. */
	if ((err = FUNC4(sc, ADS111x_CONF, sc->cfgword)) != 0) {
		FUNC8(dev, "cannot write chip config register\n");
		return (err);
	}

	/* Add the sysctl handler to set the chip configuration register.  */
	ctx = FUNC6(dev);
	tree = FUNC7(dev);
	FUNC0(ctx, FUNC1(tree), OID_AUTO,
	    "config", CTLTYPE_INT | CTLFLAG_RWTUN, sc, 0,
	    ads111x_sysctl_config, "I", "configuration register word");
	FUNC0(ctx, FUNC1(tree), OID_AUTO,
	    "lo_thresh", CTLTYPE_INT | CTLFLAG_RWTUN, sc, 0,
	    ads111x_sysctl_lothresh, "I", "comparator low threshold");
	FUNC0(ctx, FUNC1(tree), OID_AUTO,
	    "hi_thresh", CTLTYPE_INT | CTLFLAG_RWTUN, sc, 0,
	    ads111x_sysctl_hithresh, "I", "comparator high threshold");

	/* Set up channels based on metadata or default config. */
	FUNC2(sc);

	FUNC10(&sc->lock, "ads111x");

	return (0);
}