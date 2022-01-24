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
struct pwmc_softc {int /*<<< orphan*/  cdev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,void**) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 

__attribute__((used)) static void
FUNC7(struct pwmc_softc *sc)
{
	const char *hintlabel;
#ifdef FDT
	void *label;

	if (OF_getprop_alloc(ofw_bus_get_node(sc->dev), "label", &label) > 0) {
		make_dev_alias(sc->cdev, "pwm/%s", (char *)label);
		OF_prop_free(label);
	}
#endif

	if (FUNC6(FUNC2(sc->dev),
	    FUNC3(sc->dev), "label", &hintlabel) == 0) {
		FUNC4(sc->cdev, "pwm/%s", hintlabel);
	}
}