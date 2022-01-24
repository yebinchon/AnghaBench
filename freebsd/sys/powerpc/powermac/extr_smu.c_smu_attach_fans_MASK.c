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
struct smu_softc {int sc_nfans; struct smu_fan* sc_fans; } ;
struct TYPE_2__ {int (* read ) (struct pmac_fan*) ;int (* set ) (struct pmac_fan*,int) ;int /*<<< orphan*/ * name; int /*<<< orphan*/  max_rpm; int /*<<< orphan*/  min_rpm; } ;
struct smu_fan {scalar_t__ type; TYPE_1__ fan; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  M_SMU ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 scalar_t__ SMU_FAN_RPM ; 
 int SMU_PWM_SYSCTL_PWM ; 
 int SMU_PWM_SYSCTL_RPM ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid* FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_oid*) ; 
 scalar_t__ bootverbose ; 
 struct smu_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC5 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (char) ; 
 struct smu_fan* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ smu_fan_read_rpm ; 
 scalar_t__ smu_fan_set_pwm ; 
 scalar_t__ smu_fan_set_rpm ; 
 int /*<<< orphan*/  smu_fanrpm_sysctl ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 char FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(device_t dev, phandle_t fanroot)
{
	struct smu_fan *fan;
	struct smu_softc *sc;
	struct sysctl_oid *oid, *fanroot_oid;
	struct sysctl_ctx_list *ctx;
	char sysctl_name[32];
	int i, j;

	sc = FUNC4(dev);

	/* Get the number of fans. */
	sc->sc_nfans = FUNC11(dev);
	if (sc->sc_nfans == 0)
		return;

	/* Now we're able to allocate memory for the fans struct. */
	sc->sc_fans = FUNC9(sc->sc_nfans * sizeof(struct smu_fan), M_SMU,
	    M_WAITOK | M_ZERO);

	/* Now fill in the properties. */
	FUNC11(dev);
	
	/* Register fans with pmac_thermal */
	for (i = 0; i < sc->sc_nfans; i++)
		FUNC10(&sc->sc_fans[i].fan);

	ctx = FUNC5(dev);
	fanroot_oid = FUNC1(ctx,
	    FUNC3(FUNC6(dev)), OID_AUTO, "fans",
	    CTLFLAG_RD, 0, "SMU Fan Information");

	/* Add sysctls */
	for (i = 0; i < sc->sc_nfans; i++) {
		fan = &sc->sc_fans[i];
		for (j = 0; j < FUNC12(fan->fan.name); j++) {
			sysctl_name[j] = FUNC13(fan->fan.name[j]);
			if (FUNC8(sysctl_name[j]))
				sysctl_name[j] = '_';
		}
		sysctl_name[j] = 0;
		if (fan->type == SMU_FAN_RPM) {
			oid = FUNC1(ctx,
					      FUNC3(fanroot_oid),
					      OID_AUTO, sysctl_name,
					      CTLFLAG_RD, 0, "Fan Information");
			FUNC0(ctx, FUNC3(oid), OID_AUTO,
				       "minrpm", CTLFLAG_RD,
				       &fan->fan.min_rpm, 0,
				       "Minimum allowed RPM");
			FUNC0(ctx, FUNC3(oid), OID_AUTO,
				       "maxrpm", CTLFLAG_RD,
				       &fan->fan.max_rpm, 0,
				       "Maximum allowed RPM");
			FUNC2(ctx, FUNC3(oid), OID_AUTO,
					"rpm",CTLTYPE_INT | CTLFLAG_RW |
					CTLFLAG_MPSAFE, dev, i,
					smu_fanrpm_sysctl, "I", "Fan RPM");

			fan->fan.read = (int (*)(struct pmac_fan *))smu_fan_read_rpm;
			fan->fan.set = (int (*)(struct pmac_fan *, int))smu_fan_set_rpm;

		} else {
			oid = FUNC1(ctx,
					      FUNC3(fanroot_oid),
					      OID_AUTO, sysctl_name,
					      CTLFLAG_RD, 0, "Fan Information");
			FUNC0(ctx, FUNC3(oid), OID_AUTO,
				       "minpwm", CTLFLAG_RD,
				       &fan->fan.min_rpm, 0,
				       "Minimum allowed PWM in %");
			FUNC0(ctx, FUNC3(oid), OID_AUTO,
				       "maxpwm", CTLFLAG_RD,
				       &fan->fan.max_rpm, 0,
				       "Maximum allowed PWM in %");
			FUNC2(ctx, FUNC3(oid), OID_AUTO,
					"pwm",CTLTYPE_INT | CTLFLAG_RW |
					CTLFLAG_MPSAFE, dev,
					SMU_PWM_SYSCTL_PWM | i,
					smu_fanrpm_sysctl, "I", "Fan PWM in %");
			FUNC2(ctx, FUNC3(oid), OID_AUTO,
					"rpm",CTLTYPE_INT | CTLFLAG_RD |
					CTLFLAG_MPSAFE, dev,
					SMU_PWM_SYSCTL_RPM | i,
					smu_fanrpm_sysctl, "I", "Fan RPM");
			fan->fan.read = NULL;
			fan->fan.set = (int (*)(struct pmac_fan *, int))smu_fan_set_pwm;

		}
		if (bootverbose)
			FUNC7(dev, "Fan: %s type: %d\n",
				      fan->fan.name, fan->type);
	}
}