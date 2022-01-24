#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_5__ {TYPE_2__* sc; } ;
struct TYPE_6__ {TYPE_1__ app_sc; TYPE_3__* hv_appvss_dev; TYPE_1__ daemon_sc; TYPE_3__* hv_vss_dev; int /*<<< orphan*/  task; int /*<<< orphan*/  pending_mutex; int /*<<< orphan*/  dev; } ;
typedef  TYPE_2__ hv_vss_sc ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_7__ {TYPE_1__* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  APP_VSS_DEV_NAME ; 
 int /*<<< orphan*/  CTLFLAG_RWTUN ; 
 int /*<<< orphan*/  FS_VSS_DEV_NAME ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int MAKEDEV_CHECKNAME ; 
 int MAKEDEV_WAITOK ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid_list* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hv_appvss_cdevsw ; 
 int /*<<< orphan*/  hv_vss_callback ; 
 int /*<<< orphan*/  hv_vss_cdevsw ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hv_vss_log ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hv_vss_process_request ; 
 int FUNC8 (int,TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	int error;
	struct sysctl_oid_list *child;
	struct sysctl_ctx_list *ctx;

	hv_vss_sc *sc = (hv_vss_sc*)FUNC3(dev);

	sc->dev = dev;
	FUNC9(&sc->pending_mutex, "hv_vss pending mutex", NULL, MTX_DEF);

	ctx = FUNC4(dev);
	child = FUNC1(FUNC5(dev));

	FUNC0(ctx, child, OID_AUTO, "hv_vss_log",
	    CTLFLAG_RWTUN, &hv_vss_log, 0, "Hyperv VSS service log level");

	FUNC2(&sc->task, 0, hv_vss_process_request, sc);
	FUNC6(dev);
	/* create character device for file system freeze/thaw */
	error = FUNC8(MAKEDEV_CHECKNAME | MAKEDEV_WAITOK,
		    &sc->hv_vss_dev,
		    &hv_vss_cdevsw,
		    0,
		    UID_ROOT,
		    GID_WHEEL,
		    0640,
		    FS_VSS_DEV_NAME);

	if (error != 0) {
		FUNC7("Fail to create '%s': %d\n", FS_VSS_DEV_NAME, error);
		return (error);
	}
	sc->hv_vss_dev->si_drv1 = &sc->daemon_sc;
	sc->daemon_sc.sc = sc;
	/* create character device for application freeze/thaw */
	error = FUNC8(MAKEDEV_CHECKNAME | MAKEDEV_WAITOK,
		    &sc->hv_appvss_dev,
		    &hv_appvss_cdevsw,
		    0,
		    UID_ROOT,
		    GID_WHEEL,
		    0640,
		    APP_VSS_DEV_NAME);

	if (error != 0) {
		FUNC7("Fail to create '%s': %d\n", APP_VSS_DEV_NAME, error);
		return (error);
	}
	sc->hv_appvss_dev->si_drv1 = &sc->app_sc;
	sc->app_sc.sc = sc;

	return (FUNC10(dev, hv_vss_callback));
}