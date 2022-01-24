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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct ecore_vlan_mac_obj {TYPE_1__ exe_queue; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int ECORE_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,struct ecore_vlan_mac_obj*,unsigned long) ; 
 int FUNC4 (struct bxe_softc*,struct ecore_vlan_mac_obj*) ; 
 int FUNC5 (struct bxe_softc*,TYPE_1__*,unsigned long*) ; 

__attribute__((used)) static int FUNC6(struct bxe_softc *sc,
					 struct ecore_vlan_mac_obj *o,
					 unsigned long *ramrod_flags)
{
	int rc = ECORE_SUCCESS;

	FUNC1(&o->exe_queue.lock);

	FUNC0(sc, "vlan_mac_execute_step - trying to take writer lock\n");
	rc = FUNC4(sc, o);

	if (rc != ECORE_SUCCESS) {
		FUNC3(sc, o, *ramrod_flags);

		/** Calling function should not diffrentiate between this case
		 *  and the case in which there is already a pending ramrod
		 */
		rc = ECORE_PENDING;
	} else {
		rc = FUNC5(sc, &o->exe_queue, ramrod_flags);
	}
	FUNC2(&o->exe_queue.lock);

	return rc;
}