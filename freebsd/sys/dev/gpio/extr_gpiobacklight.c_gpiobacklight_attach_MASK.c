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
struct gpiobacklight_softc {int sc_brightness; int /*<<< orphan*/  sc_oid; int /*<<< orphan*/ * sc_pin; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct gpiobacklight_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_oid*) ; 
 struct gpiobacklight_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpiobacklight_sysctl ; 
 int /*<<< orphan*/  FUNC9 (struct gpiobacklight_softc*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct gpiobacklight_softc *sc;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree;
	phandle_t node;

	sc = FUNC3(dev);

	if ((node = FUNC10(dev)) == -1)
		return (ENXIO);

	if (FUNC0(node, "default-on"))
		sc->sc_brightness = true;
	else
		sc->sc_brightness = false;

	FUNC7(dev, node, 0, &sc->sc_pin);
	if (sc->sc_pin == NULL) {
		FUNC6(dev, "failed to map GPIO pin\n");
		return (ENXIO);
	}

	FUNC8(sc->sc_pin, GPIO_PIN_OUTPUT);

	FUNC9(sc);

	/* Init backlight interface */
	ctx = FUNC4(dev);
	tree = FUNC5(dev);
	sc->sc_oid = FUNC1(ctx, FUNC2(tree), OID_AUTO,
	    "brightness", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
	    gpiobacklight_sysctl, "I", "backlight brightness");

	return (0);
}