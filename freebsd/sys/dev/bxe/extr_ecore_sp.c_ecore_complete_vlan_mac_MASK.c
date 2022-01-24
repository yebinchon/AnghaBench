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
struct TYPE_4__ {scalar_t__ error; } ;
union event_ring_elem {TYPE_1__ message; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct ecore_raw_obj {int /*<<< orphan*/  (* clear_pending ) (struct ecore_raw_obj*) ;} ;
struct ecore_vlan_mac_obj {TYPE_2__ exe_queue; struct ecore_raw_obj raw; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int ECORE_INVAL ; 
 int ECORE_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  RAMROD_CONT ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,TYPE_2__*) ; 
 int FUNC4 (struct bxe_softc*,struct ecore_vlan_mac_obj*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_raw_obj*) ; 

__attribute__((used)) static int FUNC7(struct bxe_softc *sc,
				   struct ecore_vlan_mac_obj *o,
				   union event_ring_elem *cqe,
				   unsigned long *ramrod_flags)
{
	struct ecore_raw_obj *r = &o->raw;
	int rc;

	/* Clearing the pending list & raw state should be made
	 * atomically (as execution flow assumes they represent the same)
	 */
	FUNC0(&o->exe_queue.lock);

	/* Reset pending list */
	FUNC3(sc, &o->exe_queue);

	/* Clear pending */
	r->clear_pending(r);

	FUNC1(&o->exe_queue.lock);

	/* If ramrod failed this is most likely a SW bug */
	if (cqe->message.error)
		return ECORE_INVAL;

	/* Run the next bulk of pending commands if requested */
	if (FUNC2(RAMROD_CONT, ramrod_flags)) {
		rc = FUNC4(sc, o, ramrod_flags);
		if (rc < 0)
			return rc;
	}

	/* If there is more work to do return PENDING */
	if (!FUNC5(&o->exe_queue))
		return ECORE_PENDING;

	return ECORE_SUCCESS;
}