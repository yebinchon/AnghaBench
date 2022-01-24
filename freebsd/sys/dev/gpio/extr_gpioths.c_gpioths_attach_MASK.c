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
struct gpioths_softc {void* fails_oid; void* hum_oid; void* temp_oid; int /*<<< orphan*/  callout; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int GPIOTHS_POLLTIME ; 
 int /*<<< orphan*/  OID_AUTO ; 
 void* FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct gpioths_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gpioths_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC5 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpioths_fails_sysctl ; 
 int /*<<< orphan*/  gpioths_hum_sysctl ; 
 int /*<<< orphan*/  gpioths_poll ; 
 int /*<<< orphan*/  gpioths_temp_sysctl ; 
 int hz ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct gpioths_softc	*sc;
	struct sysctl_ctx_list	*ctx;
	struct sysctl_oid	*tree;

	sc = FUNC4(dev);
	ctx = FUNC5(dev);
	tree = FUNC6(dev);

	sc->dev = dev;

	FUNC2(&sc->callout, 1);
	FUNC3(&sc->callout, GPIOTHS_POLLTIME * hz, gpioths_poll, dev);

	sc->temp_oid = FUNC0(ctx, FUNC1(tree), OID_AUTO,
	    "temperature", CTLTYPE_INT | CTLFLAG_RD, sc, 0,
	    gpioths_temp_sysctl, "I", "temperature(C)");

	sc->hum_oid = FUNC0(ctx, FUNC1(tree), OID_AUTO,
	    "humidity", CTLTYPE_INT | CTLFLAG_RD, sc, 0,
	    gpioths_hum_sysctl, "I", "humidity(%)");

	sc->fails_oid = FUNC0(ctx, FUNC1(tree), OID_AUTO,
	    "fails", CTLTYPE_INT | CTLFLAG_RD, sc, 0,
	    gpioths_fails_sysctl, "I", "fails since last successful read");

	return (0);
}