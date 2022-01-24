#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vfsconf {int dummy; } ;
struct autofs_request {int dummy; } ;
struct autofs_node {int dummy; } ;
struct TYPE_6__ {TYPE_1__* si_drv1; } ;
struct TYPE_5__ {TYPE_2__* sc_cdev; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_cv; int /*<<< orphan*/  sc_requests; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MAKEDEV_CHECKNAME ; 
 int /*<<< orphan*/  M_AUTOFS ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int /*<<< orphan*/  autofs_cdevsw ; 
 int /*<<< orphan*/  autofs_node_zone ; 
 int /*<<< orphan*/  autofs_request_zone ; 
 TYPE_1__* autofs_softc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 TYPE_1__* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10(struct vfsconf *vfsp)
{
	int error;

	FUNC1(autofs_softc == NULL,
	    ("softc %p, should be NULL", autofs_softc));

	autofs_softc = FUNC6(sizeof(*autofs_softc), M_AUTOFS,
	    M_WAITOK | M_ZERO);

	autofs_request_zone = FUNC8("autofs_request",
	    sizeof(struct autofs_request), NULL, NULL, NULL, NULL,
	    UMA_ALIGN_PTR, 0);
	autofs_node_zone = FUNC8("autofs_node",
	    sizeof(struct autofs_node), NULL, NULL, NULL, NULL,
	    UMA_ALIGN_PTR, 0);

	FUNC2(&autofs_softc->sc_requests);
	FUNC3(&autofs_softc->sc_cv, "autofscv");
	FUNC7(&autofs_softc->sc_lock, "autofslk");

	error = FUNC5(MAKEDEV_CHECKNAME, &autofs_softc->sc_cdev,
	    &autofs_cdevsw, NULL, UID_ROOT, GID_WHEEL, 0600, "autofs");
	if (error != 0) {
		FUNC0("failed to create device node, error %d", error);
		FUNC9(autofs_request_zone);
		FUNC9(autofs_node_zone);
		FUNC4(autofs_softc, M_AUTOFS);

		return (error);
	}
	autofs_softc->sc_cdev->si_drv1 = autofs_softc;

	return (0);
}