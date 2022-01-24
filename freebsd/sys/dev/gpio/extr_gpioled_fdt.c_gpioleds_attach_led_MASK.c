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
struct gpioleds_softc {int /*<<< orphan*/  sc_dev; } ;
struct gpioled {int /*<<< orphan*/  leddev; int /*<<< orphan*/  pin; struct gpioleds_softc* parent_sc; } ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,void**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpioled_control ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct gpioled*,char*,int) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static void
FUNC7(struct gpioleds_softc *sc, phandle_t node,
    struct gpioled *led)
{
	char *name;
	int state, err;
	char *default_state;

	led->parent_sc = sc;

	state = 0;
	if (FUNC0(node, "default-state",
	    (void **)&default_state) != -1) {
		if (FUNC6(default_state, "on") == 0)
			state = 1;
		else if (FUNC6(default_state, "off") == 0)
			state = 0;
		else if (FUNC6(default_state, "keep") == 0)
			state = -1;
		else {
			state = -1;
			FUNC2(sc->sc_dev,
			    "unknown value for default-state in FDT\n");
		}
		FUNC1(default_state);
	}

	name = NULL;
	if (FUNC0(node, "label", (void **)&name) == -1)
		FUNC0(node, "name", (void **)&name);

	if (name == NULL) {
		FUNC2(sc->sc_dev,
		    "no name provided for gpio LED, skipping\n");
		return;
	}

	err = FUNC3(sc->sc_dev, node, 0, &led->pin);
	if (err) {
		FUNC2(sc->sc_dev, "<%s> failed to map pin\n", name);
		if (name)
			FUNC1(name);
		return;
	}
	FUNC4(led->pin, GPIO_PIN_OUTPUT);

	led->leddev = FUNC5(gpioled_control, led, name,
	    state);

	if (name != NULL)
		FUNC1(name);
}