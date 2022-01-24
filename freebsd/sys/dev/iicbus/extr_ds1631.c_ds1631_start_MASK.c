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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_2__ {char zone; char* name; int (* read ) (struct pmac_therm*) ;void* max_temp; void* target_temp; } ;
struct ds1631_softc {int /*<<< orphan*/  enum_hook; TYPE_1__ sc_sensor; } ;
typedef  int ssize_t ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,char*,char*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC3 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sysctl_oid*) ; 
 void* ZERO_C_TO_K ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ds1631_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC8 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ ds1631_sensor_read ; 
 int /*<<< orphan*/  ds1631_sensor_sysctl ; 
 scalar_t__ FUNC10 (char) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int FUNC15 (char*) ; 
 char FUNC16 (char) ; 

__attribute__((used)) static void
FUNC17(void *xdev)
{
	phandle_t child, node;
	struct ds1631_softc *sc;
	struct sysctl_oid *oid, *sensroot_oid;
	struct sysctl_ctx_list *ctx;
	ssize_t plen;
	int i;
	char  sysctl_desc[40], sysctl_name[40];

	device_t dev = (device_t)xdev;

	sc = FUNC7(dev);

	child = FUNC11(dev);

	ctx = FUNC8(dev);
	sensroot_oid = FUNC3(ctx,
	    FUNC5(FUNC9(dev)), OID_AUTO, "sensor",
	    CTLFLAG_RD, 0, "DS1631 Sensor Information");

	if (FUNC1(child, "hwsensor-zone", &sc->sc_sensor.zone,
		       sizeof(int)) < 0)
		sc->sc_sensor.zone = 0;

	plen = FUNC1(child, "hwsensor-location", sc->sc_sensor.name,
			  sizeof(sc->sc_sensor.name));
	if (plen == -1) {
		/*
		 * Ok, no hwsensor-location property, so let's look for a
		 * location property on a sub node.
		 */
		for (node = FUNC0(child); node; node = FUNC2(node))
			plen = FUNC1(node, "location", sc->sc_sensor.name,
					  sizeof(sc->sc_sensor.name));
	}

	if (plen == -1) {
		FUNC14(sysctl_name, "sensor");
	} else {
		for (i = 0; i < FUNC15(sc->sc_sensor.name); i++) {
			sysctl_name[i] = FUNC16(sc->sc_sensor.name[i]);
			if (FUNC10(sysctl_name[i]))
				sysctl_name[i] = '_';
		}
		sysctl_name[i] = 0;
	}

	/* Make up target temperatures. These are low, for the drive bay. */
	if (sc->sc_sensor.zone == 0) {
		sc->sc_sensor.target_temp = 400 + ZERO_C_TO_K;
		sc->sc_sensor.max_temp = 500 + ZERO_C_TO_K;
	} else {
		sc->sc_sensor.target_temp = 300 + ZERO_C_TO_K;
		sc->sc_sensor.max_temp = 500 + ZERO_C_TO_K;
	}

	sc->sc_sensor.read =
	    (int (*)(struct pmac_therm *sc))(ds1631_sensor_read);
	FUNC12(&sc->sc_sensor);

	FUNC13(sysctl_desc,"%s %s", sc->sc_sensor.name, "(C)");
	oid = FUNC3(ctx, FUNC5(sensroot_oid),
			      OID_AUTO, sysctl_name, CTLFLAG_RD, 0,
			      "Sensor Information");
	FUNC4(ctx, FUNC5(oid), OID_AUTO, "temp",
			CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE, dev,
			0, ds1631_sensor_sysctl, "IK", sysctl_desc);

	FUNC6(&sc->enum_hook);
}