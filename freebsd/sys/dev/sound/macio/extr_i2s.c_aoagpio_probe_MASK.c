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
struct gpio_match {size_t ctrl; int /*<<< orphan*/ * name; } ;
struct aoagpio_softc {size_t ctrl; char detect_active; int /*<<< orphan*/ * i2s; scalar_t__ level; int /*<<< orphan*/  dev; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bname ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int GPIO_CTRL_EXTINT_SET ; 
 int FUNC0 (int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 struct aoagpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct gpio_match* gpio_controls ; 
 struct aoagpio_softc** gpio_ctrls ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(device_t gpio)
{
	phandle_t	 	 node;
	char			 bname[32];
	const char 		*name;
	struct gpio_match	*m;
	struct aoagpio_softc	*sc;

	node = FUNC7(gpio);
	if (node == 0 || node == -1)
		return (EINVAL);

	FUNC2(bname, sizeof(bname));
	if (FUNC0(node, "audio-gpio", bname, sizeof(bname)) > 2)
		name = bname;
	else
		name = FUNC6(gpio);

	/* Try to find a match. */
	for (m = gpio_controls; m->name != NULL; m++) {
		if (FUNC8(name, m->name) == 0) {
			sc = FUNC3(gpio);
			gpio_ctrls[m->ctrl] = sc;
			sc->dev = gpio;
			sc->ctrl = m->ctrl;
			sc->level = 0;
			sc->detect_active = 0;
			sc->i2s = NULL;

			FUNC0(node, "audio-gpio-active-state", 
				&sc->detect_active, sizeof(sc->detect_active));

			if ((1 << m->ctrl) & GPIO_CTRL_EXTINT_SET)
				FUNC1(gpio);

			FUNC5(gpio, m->name);
			FUNC4(gpio);
			return (0);
		}
	}

	return (ENXIO);
}