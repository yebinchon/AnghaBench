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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct max6690_softc {int sc_nsensors; int /*<<< orphan*/  enum_hook; TYPE_2__* sc_sensors; } ;
struct max6690_sensor {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {char* name; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; TYPE_1__ therm; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  M_MAX6690 ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_oid*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct max6690_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC5 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC8 (char) ; 
 TYPE_2__* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max6690_sensor_sysctl ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*,char*) ; 
 int FUNC13 (char*) ; 
 char FUNC14 (char) ; 

__attribute__((used)) static void
FUNC15(void *xdev)
{
	struct max6690_softc *sc;
	struct sysctl_oid *oid, *sensroot_oid;
	struct sysctl_ctx_list *ctx;
	char sysctl_desc[40], sysctl_name[32];
	int i, j;

	device_t dev = (device_t)xdev;

	sc = FUNC4(dev);

	sc->sc_nsensors = 0;

	/* Count the actual number of sensors. */
	sc->sc_nsensors = FUNC10(dev);

	FUNC7(dev, "%d sensors detected.\n", sc->sc_nsensors);

	if (sc->sc_nsensors == 0)
		FUNC7(dev, "WARNING: No MAX6690 sensors detected!\n");

	sc->sc_sensors = FUNC9 (sc->sc_nsensors * sizeof(struct max6690_sensor),
				 M_MAX6690, M_WAITOK | M_ZERO);

	ctx = FUNC5(dev);
	sensroot_oid = FUNC0(ctx,
	    FUNC2(FUNC6(dev)), OID_AUTO, "sensor",
	    CTLFLAG_RD, 0, "MAX6690 Sensor Information");

	/* Now we can fill the properties into the allocated struct. */
	sc->sc_nsensors = FUNC10(dev);

	/* Register with powermac_thermal */
	for (i = 0; i < sc->sc_nsensors; i++)
		FUNC11(&sc->sc_sensors[i].therm);

	/* Add sysctls for the sensors. */
	for (i = 0; i < sc->sc_nsensors; i++) {
		for (j = 0; j < FUNC13(sc->sc_sensors[i].therm.name); j++) {
			sysctl_name[j] =
			    FUNC14(sc->sc_sensors[i].therm.name[j]);
			if (FUNC8(sysctl_name[j]))
				sysctl_name[j] = '_';
		}
		sysctl_name[j] = 0;

		FUNC12(sysctl_desc,"%s %s", sc->sc_sensors[i].therm.name,
			"(C)");
		oid = FUNC0(ctx, FUNC2(sensroot_oid),
				      OID_AUTO,
				      sysctl_name, CTLFLAG_RD, 0,
				      "Sensor Information");
		/* I use i to pass the sensor id. */
		FUNC1(ctx, FUNC2(oid), OID_AUTO, "temp",
				CTLTYPE_INT | CTLFLAG_RD, dev, i % 2,
				max6690_sensor_sysctl, "IK", sysctl_desc);

	}
	/* Dump sensor location & ID. */
	if (bootverbose) {
		FUNC7(dev, "Sensors\n");
		for (i = 0; i < sc->sc_nsensors; i++) {
			FUNC7(dev, "Location : %s ID: %d\n",
				      sc->sc_sensors[i].therm.name,
				      sc->sc_sensors[i].id);
		}
	}

	FUNC3(&sc->enum_hook);
}