#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vfsconf {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  sc_lock; int /*<<< orphan*/ * sc_cdev; scalar_t__ sc_dev_opened; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  M_AUTOFS ; 
 int /*<<< orphan*/  autofs_node_zone ; 
 int /*<<< orphan*/  autofs_request_zone ; 
 TYPE_1__* autofs_softc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct vfsconf *vfsp)
{

	FUNC2(&autofs_softc->sc_lock);
	if (autofs_softc->sc_dev_opened) {
		FUNC3(&autofs_softc->sc_lock);
		return (EBUSY);
	}
	if (autofs_softc->sc_cdev != NULL)
		FUNC0(autofs_softc->sc_cdev);

	FUNC4(autofs_request_zone);
	FUNC4(autofs_node_zone);

	FUNC3(&autofs_softc->sc_lock);
	/*
	 * XXX: Race with open?
	 */
	FUNC1(autofs_softc, M_AUTOFS);

	return (0);
}