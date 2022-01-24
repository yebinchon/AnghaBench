#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sc_cv; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/ * sc_shutdown_post_eh; int /*<<< orphan*/ * sc_shutdown_pre_eh; int /*<<< orphan*/ * sc_cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  M_ISCSI ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iscsi_outstanding_zone ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* sc ; 
 int /*<<< orphan*/  shutdown_post_sync ; 
 int /*<<< orphan*/  shutdown_pre_sync ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(void)
{

	if (sc->sc_cdev != NULL) {
		FUNC1("removing device node");
		FUNC3(sc->sc_cdev);
		FUNC1("device node removed");
	}

	if (sc->sc_shutdown_pre_eh != NULL)
		FUNC0(shutdown_pre_sync, sc->sc_shutdown_pre_eh);
	if (sc->sc_shutdown_post_eh != NULL)
		FUNC0(shutdown_post_sync, sc->sc_shutdown_post_eh);

	FUNC5(sc);

	FUNC7(iscsi_outstanding_zone);
	FUNC6(&sc->sc_lock);
	FUNC2(&sc->sc_cv);
	FUNC4(sc, M_ISCSI);
	return (0);
}