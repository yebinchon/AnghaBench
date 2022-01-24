#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int /*<<< orphan*/  type ;
struct fcu_softc {TYPE_2__* sc_fans; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  location ;
typedef  int /*<<< orphan*/  id ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int zone; int min_rpm; int max_rpm; int (* read ) (struct pmac_fan*) ;int (* set ) (struct pmac_fan*,int) ;int default_rpm; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {scalar_t__ type; int id; TYPE_1__ fan; int /*<<< orphan*/  setpoint; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FCU_FAN_PWM ; 
 scalar_t__ FCU_FAN_RPM ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct fcu_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ fcu_fan_set_pwm ; 
 scalar_t__ fcu_fan_set_rpm ; 
 int fcu_rpm_shift ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	phandle_t child;
	struct fcu_softc *sc;
	u_int id[12];
	char location[144];
	char type[96];
	int i = 0, j, len = 0, prop_len, prev_len = 0;

	sc = FUNC1(dev);

	child = FUNC3(dev);

	/* Fill the fan location property. */
	prop_len = FUNC0(child, "hwctrl-location", location,
			      sizeof(location));
	while (len < prop_len) {
		if (sc->sc_fans != NULL) {
			FUNC5(sc->sc_fans[i].fan.name, location + len);
		}
		prev_len = FUNC6(location + len) + 1;
		len += prev_len;
		i++;
	}
	if (sc->sc_fans == NULL)
		return (i);

	/* Fill the fan type property. */
	len = 0;
	i = 0;
	prev_len = 0;
	prop_len = FUNC0(child, "hwctrl-type", type, sizeof(type));
	while (len < prop_len) {
		if (FUNC4(type + len, "fan-rpm") == 0)
			sc->sc_fans[i].type = FCU_FAN_RPM;
		else
			sc->sc_fans[i].type = FCU_FAN_PWM;
		prev_len = FUNC6(type + len) + 1;
		len += prev_len;
		i++;
	}

	/* Fill the fan ID property. */
	prop_len = FUNC0(child, "hwctrl-id", id, sizeof(id));
	for (j = 0; j < i; j++)
		sc->sc_fans[j].id = ((id[j] >> 8) & 0x0f) % 8;

	/* Fill the fan zone property. */
	prop_len = FUNC0(child, "hwctrl-zone", id, sizeof(id));
	for (j = 0; j < i; j++)
		sc->sc_fans[j].fan.zone = id[j];

	/* Finish setting up fan properties */
	for (j = 0; j < i; j++) {
		sc->sc_fans[j].dev = sc->sc_dev;
		if (sc->sc_fans[j].type == FCU_FAN_RPM) {
			sc->sc_fans[j].fan.min_rpm = 4800 >> fcu_rpm_shift;
			sc->sc_fans[j].fan.max_rpm = 56000 >> fcu_rpm_shift;
			sc->sc_fans[j].setpoint =
			    FUNC2(&sc->sc_fans[j]);
			sc->sc_fans[j].fan.read = 
			    (int (*)(struct pmac_fan *))(fcu_fan_get_rpm);
			sc->sc_fans[j].fan.set =
			    (int (*)(struct pmac_fan *, int))(fcu_fan_set_rpm);
		} else {
			sc->sc_fans[j].fan.min_rpm = 30;	/* Percent */
			sc->sc_fans[j].fan.max_rpm = 100;
			sc->sc_fans[j].fan.read = NULL;
			sc->sc_fans[j].fan.set =
			    (int (*)(struct pmac_fan *, int))(fcu_fan_set_pwm);
		}
		sc->sc_fans[j].fan.default_rpm = sc->sc_fans[j].fan.max_rpm;
	}

	return (i);
}