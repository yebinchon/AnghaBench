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
struct smusat_softc {int sc_nsensors; struct smu_sensor* sc_sensors; scalar_t__ sc_last_update; } ;
struct TYPE_2__ {char zone; char* name; int target_temp; int max_temp; int (* read ) (struct pmac_therm*) ;} ;
struct smu_sensor {char reg; scalar_t__ type; TYPE_1__ therm; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  M_SMUSAT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,char*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 scalar_t__ SMU_CURRENT_SENSOR ; 
 scalar_t__ SMU_POWER_SENSOR ; 
 scalar_t__ SMU_TEMP_SENSOR ; 
 scalar_t__ SMU_VOLTAGE_SENSOR ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sysctl_oid*) ; 
 struct smusat_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC6 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (char) ; 
 struct smu_sensor* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ smusat_sensor_read ; 
 int /*<<< orphan*/  smusat_sensor_sysctl ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,char*,char const*) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int FUNC15 (char*) ; 
 char FUNC16 (char) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	phandle_t child;
	struct smu_sensor *sens;
	struct smusat_softc *sc;
	struct sysctl_oid *sensroot_oid;
	struct sysctl_ctx_list *ctx;
	char type[32];
	int i;

	sc = FUNC5(dev);
	sc->sc_nsensors = 0;
	sc->sc_last_update = 0;

	for (child = FUNC0(FUNC11(dev)); child != 0;
	    child = FUNC2(child))
		sc->sc_nsensors++;

	if (sc->sc_nsensors == 0) {
		FUNC8(dev, "WARNING: No sensors detected!\n");
		return (-1);
	}
	    
	sc->sc_sensors = FUNC10(sc->sc_nsensors * sizeof(struct smu_sensor),
	    M_SMUSAT, M_WAITOK | M_ZERO);

	sens = sc->sc_sensors;
	sc->sc_nsensors = 0;

	ctx = FUNC6(dev);
	sensroot_oid = FUNC7(dev);

	for (child = FUNC0(FUNC11(dev)); child != 0;
	    child = FUNC2(child)) {
		char sysctl_name[40], sysctl_desc[40];
		const char *units;

		sens->dev = dev;
		sens->reg = 0;
		FUNC1(child, "reg", &sens->reg, sizeof(sens->reg));
		if (sens->reg < 0x30)
			continue;
		sens->reg -= 0x30;

		FUNC1(child, "zone", &sens->therm.zone, sizeof(int));
		FUNC1(child, "location", sens->therm.name,
		    sizeof(sens->therm.name));

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

		for (i = 0; i < FUNC15(sens->therm.name); i++) {
			sysctl_name[i] = FUNC16(sens->therm.name[i]);
			if (FUNC9(sysctl_name[i]))
				sysctl_name[i] = '_';
		}
		sysctl_name[i] = 0;

		FUNC13(sysctl_desc,"%s (%s)", sens->therm.name, units);
		FUNC3(ctx, FUNC4(sensroot_oid), OID_AUTO,
		    sysctl_name, CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE, dev,
		    sc->sc_nsensors, smusat_sensor_sysctl,
		    (sens->type == SMU_TEMP_SENSOR) ? "IK" : "I", sysctl_desc);

		if (sens->type == SMU_TEMP_SENSOR) {
			/* Make up some numbers */
			sens->therm.target_temp = 500 + 2731; /* 50 C */
			sens->therm.max_temp = 900 + 2731; /* 90 C */
			sens->therm.read =
			    (int (*)(struct pmac_therm *))smusat_sensor_read;
			FUNC12(&sens->therm);
		}

		sens++;
		sc->sc_nsensors++;
	}

	return (0);
}