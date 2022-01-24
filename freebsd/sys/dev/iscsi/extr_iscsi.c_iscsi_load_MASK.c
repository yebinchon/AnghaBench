#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct iscsi_outstanding {int dummy; } ;
struct TYPE_6__ {TYPE_1__* si_drv1; } ;
struct TYPE_5__ {void* sc_shutdown_post_eh; void* sc_shutdown_pre_eh; TYPE_3__* sc_cdev; int /*<<< orphan*/  sc_cv; int /*<<< orphan*/  sc_sessions; int /*<<< orphan*/  sc_lock; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  MAKEDEV_CHECKNAME ; 
 int /*<<< orphan*/  M_ISCSI ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ SHUTDOWN_PRI_DEFAULT ; 
 scalar_t__ SHUTDOWN_PRI_FIRST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  iscsi_cdevsw ; 
 int /*<<< orphan*/  iscsi_outstanding_zone ; 
 int /*<<< orphan*/  iscsi_shutdown_post ; 
 int /*<<< orphan*/  iscsi_shutdown_pre ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 TYPE_1__* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* sc ; 
 int /*<<< orphan*/  shutdown_post_sync ; 
 int /*<<< orphan*/  shutdown_pre_sync ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(void)
{
	int error;

	sc = FUNC5(sizeof(*sc), M_ISCSI, M_ZERO | M_WAITOK);
	FUNC6(&sc->sc_lock, "iscsi");
	FUNC2(&sc->sc_sessions);
	FUNC3(&sc->sc_cv, "iscsi_cv");

	iscsi_outstanding_zone = FUNC7("iscsi_outstanding",
	    sizeof(struct iscsi_outstanding), NULL, NULL, NULL, NULL,
	    UMA_ALIGN_PTR, 0);

	error = FUNC4(MAKEDEV_CHECKNAME, &sc->sc_cdev, &iscsi_cdevsw,
	    NULL, UID_ROOT, GID_WHEEL, 0600, "iscsi");
	if (error != 0) {
		FUNC1("failed to create device node, error %d", error);
		return (error);
	}
	sc->sc_cdev->si_drv1 = sc;

	sc->sc_shutdown_pre_eh = FUNC0(shutdown_pre_sync,
	    iscsi_shutdown_pre, sc, SHUTDOWN_PRI_FIRST);
	/*
	 * shutdown_post_sync needs to run after filesystem shutdown and before
	 * CAM shutdown - otherwise when rebooting with an iSCSI session that is
	 * disconnected but has outstanding requests, dashutdown() will hang on
	 * cam_periph_runccb().
	 */
	sc->sc_shutdown_post_eh = FUNC0(shutdown_post_sync,
	    iscsi_shutdown_post, sc, SHUTDOWN_PRI_DEFAULT - 1);

	return (0);
}