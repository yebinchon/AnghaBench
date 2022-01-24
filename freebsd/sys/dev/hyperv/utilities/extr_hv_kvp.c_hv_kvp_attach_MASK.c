#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_4__ {TYPE_2__* hv_kvp_dev; int /*<<< orphan*/  task; int /*<<< orphan*/  pending_mutex; int /*<<< orphan*/  dev_sema; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ hv_kvp_sc ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {TYPE_1__* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RWTUN ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int MAKEDEV_CHECKNAME ; 
 int MAKEDEV_WAITOK ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid_list* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hv_kvp_callback ; 
 int /*<<< orphan*/  hv_kvp_cdevsw ; 
 int /*<<< orphan*/  hv_kvp_log ; 
 int /*<<< orphan*/  hv_kvp_process_request ; 
 int FUNC6 (int,TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	int error;
	struct sysctl_oid_list *child;
	struct sysctl_ctx_list *ctx;

	hv_kvp_sc *sc = (hv_kvp_sc*)FUNC3(dev);

	sc->dev = dev;
	FUNC8(&sc->dev_sema, 0, "hv_kvp device semaphore");
	FUNC7(&sc->pending_mutex, "hv-kvp pending mutex",
		NULL, MTX_DEF);

	ctx = FUNC4(dev);
	child = FUNC1(FUNC5(dev));

	FUNC0(ctx, child, OID_AUTO, "hv_kvp_log",
	    CTLFLAG_RWTUN, &hv_kvp_log, 0, "Hyperv KVP service log level");

	FUNC2(&sc->task, 0, hv_kvp_process_request, sc);

	/* create character device */
	error = FUNC6(MAKEDEV_CHECKNAME | MAKEDEV_WAITOK,
			&sc->hv_kvp_dev,
			&hv_kvp_cdevsw,
			0,
			UID_ROOT,
			GID_WHEEL,
			0640,
			"hv_kvp_dev");

	if (error != 0)
		return (error);
	sc->hv_kvp_dev->si_drv1 = sc;

	return (FUNC9(dev, hv_kvp_callback));
}