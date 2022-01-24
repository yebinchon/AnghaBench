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
struct ad7418_softc {int /*<<< orphan*/  sc_lock; scalar_t__ sc_lastupdate; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AD7418_CONF ; 
 int AD7418_CONF_SHUTDOWN ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct ad7418_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ad7418_sysctl_temp ; 
 int /*<<< orphan*/  ad7418_sysctl_voltage ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ad7418_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC5 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ hz ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ ticks ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct ad7418_softc *sc = FUNC4(dev);
	struct sysctl_ctx_list *ctx = FUNC5(dev);
	struct sysctl_oid *tree = FUNC6(dev);
	int conf;

	sc->sc_dev = dev;
	sc->sc_lastupdate = ticks - hz;

	FUNC7(&sc->sc_lock, "ad7418");

	FUNC0(ctx, FUNC1(tree), OID_AUTO,
		"temp", CTLTYPE_INT | CTLFLAG_RD, sc, 0,
		ad7418_sysctl_temp, "I", "operating temperature");
	FUNC0(ctx, FUNC1(tree), OID_AUTO,
		"volt", CTLTYPE_INT | CTLFLAG_RD, sc, 0,
		ad7418_sysctl_voltage, "I", "input voltage");

	/* enable chip if configured in shutdown mode */
	conf = FUNC2(dev, AD7418_CONF);
	if (conf >= 0 && (conf & AD7418_CONF_SHUTDOWN))
		FUNC3(dev, AD7418_CONF, conf &~ AD7418_CONF_SHUTDOWN);

	return (0);
}