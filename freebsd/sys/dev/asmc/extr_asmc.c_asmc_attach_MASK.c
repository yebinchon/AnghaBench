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
struct asmc_softc {int sc_nfan; int /*<<< orphan*/ * sc_sms_tq; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_ioport; scalar_t__ sc_rid_port; int /*<<< orphan*/ * sc_irq; scalar_t__ sc_rid_irq; int /*<<< orphan*/  sc_cookie; int /*<<< orphan*/  sc_sms_task; struct sysctl_oid* sc_sms_tree; struct sysctl_oid* sc_light_tree; struct sysctl_oid* sc_temp_tree; struct sysctl_oid** sc_fan_tree; struct asmc_model* sc_model; } ;
struct asmc_model {char** smc_tempnames; char** smc_tempdescs; int /*<<< orphan*/ * smc_sms_z; int /*<<< orphan*/ * smc_sms_y; int /*<<< orphan*/ * smc_sms_x; int /*<<< orphan*/ * smc_light_control; int /*<<< orphan*/ * smc_light_right; int /*<<< orphan*/ * smc_light_left; scalar_t__* smc_temps; int /*<<< orphan*/ * smc_fan_targetspeed; int /*<<< orphan*/ * smc_fan_maxspeed; int /*<<< orphan*/ * smc_fan_minspeed; int /*<<< orphan*/ * smc_fan_safespeed; int /*<<< orphan*/ * smc_fan_speed; int /*<<< orphan*/ * smc_fan_id; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_ANYBODY ; 
 int CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int CTLTYPE_STRING ; 
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  PI_REALTIME ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 void* FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct asmc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct asmc_model* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asmc_sms_intrfast ; 
 int /*<<< orphan*/  asmc_sms_task ; 
 int /*<<< orphan*/ * asmc_temp_sysctl ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct asmc_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC11 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	int i, j;
	int ret;
	char name[2];
	struct asmc_softc *sc = FUNC10(dev);
	struct sysctl_ctx_list *sysctlctx;
	struct sysctl_oid *sysctlnode;
	struct asmc_model *model;

	sc->sc_ioport = FUNC6(dev, SYS_RES_IOPORT,
	    &sc->sc_rid_port, RF_ACTIVE);
	if (sc->sc_ioport == NULL) {
		FUNC13(dev, "unable to allocate IO port\n");
		return (ENOMEM);
	}

	sysctlctx  = FUNC11(dev);
	sysctlnode = FUNC12(dev);

	model = FUNC5(dev);

	FUNC15(&sc->sc_mtx, "asmc", NULL, MTX_SPIN);

	sc->sc_model = model;
	FUNC4(dev);

	/*
	 * dev.asmc.n.fan.* tree.
	 */
	sc->sc_fan_tree[0] = FUNC0(sysctlctx,
	    FUNC2(sysctlnode), OID_AUTO, "fan",
	    CTLFLAG_RD, 0, "Fan Root Tree");

	for (i = 1; i <= sc->sc_nfan; i++) {
		j = i - 1;
		name[0] = '0' + j;
		name[1] = 0;
		sc->sc_fan_tree[i] = FUNC0(sysctlctx,
		    FUNC2(sc->sc_fan_tree[0]),
		    OID_AUTO, name, CTLFLAG_RD, 0,
		    "Fan Subtree");

		FUNC1(sysctlctx,
		    FUNC2(sc->sc_fan_tree[i]),
		    OID_AUTO, "id", CTLTYPE_STRING | CTLFLAG_RD,
		    dev, j, model->smc_fan_id, "I",
		    "Fan ID");

		FUNC1(sysctlctx,
		    FUNC2(sc->sc_fan_tree[i]),
		    OID_AUTO, "speed", CTLTYPE_INT | CTLFLAG_RD,
		    dev, j, model->smc_fan_speed, "I",
		    "Fan speed in RPM");

		FUNC1(sysctlctx,
		    FUNC2(sc->sc_fan_tree[i]),
		    OID_AUTO, "safespeed",
		    CTLTYPE_INT | CTLFLAG_RD,
		    dev, j, model->smc_fan_safespeed, "I",
		    "Fan safe speed in RPM");

		FUNC1(sysctlctx,
		    FUNC2(sc->sc_fan_tree[i]),
		    OID_AUTO, "minspeed",
		    CTLTYPE_INT | CTLFLAG_RW,
		    dev, j, model->smc_fan_minspeed, "I",
		    "Fan minimum speed in RPM");

		FUNC1(sysctlctx,
		    FUNC2(sc->sc_fan_tree[i]),
		    OID_AUTO, "maxspeed",
		    CTLTYPE_INT | CTLFLAG_RW,
		    dev, j, model->smc_fan_maxspeed, "I",
		    "Fan maximum speed in RPM");

		FUNC1(sysctlctx,
		    FUNC2(sc->sc_fan_tree[i]),
		    OID_AUTO, "targetspeed",
		    CTLTYPE_INT | CTLFLAG_RW,
		    dev, j, model->smc_fan_targetspeed, "I",
		    "Fan target speed in RPM");
	}

	/*
	 * dev.asmc.n.temp tree.
	 */
	sc->sc_temp_tree = FUNC0(sysctlctx,
	    FUNC2(sysctlnode), OID_AUTO, "temp",
	    CTLFLAG_RD, 0, "Temperature sensors");

	for (i = 0; model->smc_temps[i]; i++) {
		FUNC1(sysctlctx,
		    FUNC2(sc->sc_temp_tree),
		    OID_AUTO, model->smc_tempnames[i],
		    CTLTYPE_INT | CTLFLAG_RD,
		    dev, i, asmc_temp_sysctl, "I",
		    model->smc_tempdescs[i]);
	}

	/*
	 * dev.asmc.n.light
	 */
	if (model->smc_light_left) {
		sc->sc_light_tree = FUNC0(sysctlctx,
		    FUNC2(sysctlnode), OID_AUTO, "light",
		    CTLFLAG_RD, 0, "Keyboard backlight sensors");

		FUNC1(sysctlctx,
		    FUNC2(sc->sc_light_tree),
		    OID_AUTO, "left", CTLTYPE_INT | CTLFLAG_RD,
		    dev, 0, model->smc_light_left, "I",
		    "Keyboard backlight left sensor");

		FUNC1(sysctlctx,
		    FUNC2(sc->sc_light_tree),
		    OID_AUTO, "right", CTLTYPE_INT | CTLFLAG_RD,
		    dev, 0, model->smc_light_right, "I",
		    "Keyboard backlight right sensor");

		FUNC1(sysctlctx,
		    FUNC2(sc->sc_light_tree),
		    OID_AUTO, "control",
		    CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_ANYBODY,
		    dev, 0, model->smc_light_control, "I",
		    "Keyboard backlight brightness control");
	}

	if (model->smc_sms_x == NULL)
		goto nosms;

	/*
	 * dev.asmc.n.sms tree.
	 */
	sc->sc_sms_tree = FUNC0(sysctlctx,
	    FUNC2(sysctlnode), OID_AUTO, "sms",
	    CTLFLAG_RD, 0, "Sudden Motion Sensor");

	FUNC1(sysctlctx,
	    FUNC2(sc->sc_sms_tree),
	    OID_AUTO, "x", CTLTYPE_INT | CTLFLAG_RD,
	    dev, 0, model->smc_sms_x, "I",
	    "Sudden Motion Sensor X value");

	FUNC1(sysctlctx,
	    FUNC2(sc->sc_sms_tree),
	    OID_AUTO, "y", CTLTYPE_INT | CTLFLAG_RD,
	    dev, 0, model->smc_sms_y, "I",
	    "Sudden Motion Sensor Y value");

	FUNC1(sysctlctx,
	    FUNC2(sc->sc_sms_tree),
	    OID_AUTO, "z", CTLTYPE_INT | CTLFLAG_RD,
	    dev, 0, model->smc_sms_z, "I",
	    "Sudden Motion Sensor Z value");

	/*
	 * Need a taskqueue to send devctl_notify() events
	 * when the SMS interrupt us.
	 *
	 * PI_REALTIME is used due to the sensitivity of the
	 * interrupt. An interrupt from the SMS means that the
	 * disk heads should be turned off as quickly as possible.
	 *
	 * We only need to do this for the non INTR_FILTER case.
	 */
	sc->sc_sms_tq = NULL;
	FUNC3(&sc->sc_sms_task, 0, asmc_sms_task, sc);
	sc->sc_sms_tq = FUNC16("asmc_taskq", M_WAITOK,
	    taskqueue_thread_enqueue, &sc->sc_sms_tq);
	FUNC18(&sc->sc_sms_tq, 1, PI_REALTIME, "%s sms taskq",
	    FUNC9(dev));
	/*
	 * Allocate an IRQ for the SMS.
	 */
	sc->sc_rid_irq = 0;
	sc->sc_irq = FUNC6(dev, SYS_RES_IRQ,
	    &sc->sc_rid_irq, RF_ACTIVE);
	if (sc->sc_irq == NULL) {
		FUNC13(dev, "unable to allocate IRQ resource\n");
		ret = ENXIO;
		goto err2;
	}

	ret = FUNC8(dev, sc->sc_irq,
	          INTR_TYPE_MISC | INTR_MPSAFE,
	    asmc_sms_intrfast, NULL,
	    dev, &sc->sc_cookie);

	if (ret) {
		FUNC13(dev, "unable to setup SMS IRQ\n");
		goto err1;
	}
nosms:
	return (0);
err1:
	FUNC7(dev, SYS_RES_IRQ, sc->sc_rid_irq, sc->sc_irq);
err2:
	FUNC7(dev, SYS_RES_IOPORT, sc->sc_rid_port,
	    sc->sc_ioport);
	FUNC14(&sc->sc_mtx);
	if (sc->sc_sms_tq)
		FUNC17(sc->sc_sms_tq);

	return (ret);
}