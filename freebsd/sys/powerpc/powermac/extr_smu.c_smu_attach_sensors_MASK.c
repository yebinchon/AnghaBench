#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  type ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct smu_softc {int sc_nsensors; struct smu_sensor* sc_sensors; } ;
struct TYPE_2__ {char zone; char* name; int target_temp; int max_temp; int (* read ) (struct pmac_therm*) ;} ;
struct smu_sensor {scalar_t__ type; char reg; TYPE_1__ therm; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cell_t ;

/* Variables and functions */
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  M_SMU ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,char*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 scalar_t__ SMU_CURRENT_SENSOR ; 
 scalar_t__ SMU_POWER_SENSOR ; 
 scalar_t__ SMU_TEMP_SENSOR ; 
 scalar_t__ SMU_VOLTAGE_SENSOR ; 
 struct sysctl_oid* FUNC3 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sysctl_oid*) ; 
 struct smu_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC7 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (char) ; 
 struct smu_sensor* FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ smu_sensor_read ; 
 int /*<<< orphan*/  smu_sensor_sysctl ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,char*,char const*) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int FUNC15 (char*) ; 
 char FUNC16 (char) ; 

__attribute__((used)) static void
FUNC17(device_t dev, phandle_t sensroot)
{
	struct smu_sensor *sens;
	struct smu_softc *sc;
	struct sysctl_oid *sensroot_oid;
	struct sysctl_ctx_list *ctx;
	phandle_t child;
	char type[32];
	int i;

	sc = FUNC6(dev);
	sc->sc_nsensors = 0;

	for (child = FUNC0(sensroot); child != 0; child = FUNC2(child))
		sc->sc_nsensors++;

	if (sc->sc_nsensors == 0) {
		FUNC9(dev, "WARNING: No sensors detected!\n");
		return;
	}

	sc->sc_sensors = FUNC11(sc->sc_nsensors * sizeof(struct smu_sensor),
	    M_SMU, M_WAITOK | M_ZERO);

	sens = sc->sc_sensors;
	sc->sc_nsensors = 0;

	ctx = FUNC7(dev);
	sensroot_oid = FUNC3(ctx,
	    FUNC5(FUNC8(dev)), OID_AUTO, "sensors",
	    CTLFLAG_RD, 0, "SMU Sensor Information");

	for (child = FUNC0(sensroot); child != 0; child = FUNC2(child)) {
		char sysctl_name[40], sysctl_desc[40];
		const char *units;

		sens->dev = dev;
		FUNC1(child, "device_type", type, sizeof(type));

		if (FUNC14(type, "current-sensor") == 0) {
			sens->type = SMU_CURRENT_SENSOR;
			units = "mA";
		} else if (FUNC14(type, "temp-sensor") == 0) {
			sens->type = SMU_TEMP_SENSOR;
			units = "C";
		} else if (FUNC14(type, "voltage-sensor") == 0) {
			sens->type = SMU_VOLTAGE_SENSOR;
			units = "mV";
		} else if (FUNC14(type, "power-sensor") == 0) {
			sens->type = SMU_POWER_SENSOR;
			units = "mW";
		} else {
			continue;
		}

		FUNC1(child, "reg", &sens->reg, sizeof(cell_t));
		FUNC1(child, "zone", &sens->therm.zone, sizeof(int));
		FUNC1(child, "location", sens->therm.name,
		    sizeof(sens->therm.name));

		for (i = 0; i < FUNC15(sens->therm.name); i++) {
			sysctl_name[i] = FUNC16(sens->therm.name[i]);
			if (FUNC10(sysctl_name[i]))
				sysctl_name[i] = '_';
		}
		sysctl_name[i] = 0;

		FUNC13(sysctl_desc,"%s (%s)", sens->therm.name, units);

		FUNC4(ctx, FUNC5(sensroot_oid), OID_AUTO,
		    sysctl_name, CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE,
		    dev, sc->sc_nsensors, smu_sensor_sysctl, 
		    (sens->type == SMU_TEMP_SENSOR) ? "IK" : "I", sysctl_desc);

		if (sens->type == SMU_TEMP_SENSOR) {
			/* Make up some numbers */
			sens->therm.target_temp = 500 + 2731; /* 50 C */
			sens->therm.max_temp = 900 + 2731; /* 90 C */

			sens->therm.read =
			    (int (*)(struct pmac_therm *))smu_sensor_read;
			FUNC12(&sens->therm);
		}

		sens++;
		sc->sc_nsensors++;
	}
}