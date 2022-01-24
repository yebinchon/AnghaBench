#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ecore_exe_queue_obj {scalar_t__ (* get ) (struct ecore_exe_queue_obj*,struct ecore_exeq_elem*) ;} ;
struct ecore_vlan_mac_obj {scalar_t__ (* put_credit ) (struct ecore_vlan_mac_obj*) ;struct ecore_vlan_mac_registry_elem* (* check_del ) (struct bxe_softc*,struct ecore_vlan_mac_obj*,int /*<<< orphan*/ *) ;struct ecore_exe_queue_obj exe_queue; } ;
union ecore_qable_obj {struct ecore_vlan_mac_obj vlan_mac; } ;
struct ecore_vlan_mac_registry_elem {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  vlan_mac_flags; int /*<<< orphan*/  cmd; int /*<<< orphan*/  u; } ;
struct TYPE_4__ {TYPE_1__ vlan_mac; } ;
struct ecore_exeq_elem {TYPE_2__ cmd_data; } ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  query_elem ;

/* Variables and functions */
 int /*<<< orphan*/  ECORE_DONT_CONSUME_CAM_CREDIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ECORE_EXISTS ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_exeq_elem*,struct ecore_exeq_elem*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*) ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ECORE_VLAN_MAC_MOVE ; 
 struct ecore_vlan_mac_registry_elem* FUNC4 (struct bxe_softc*,struct ecore_vlan_mac_obj*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct ecore_exe_queue_obj*,struct ecore_exeq_elem*) ; 
 scalar_t__ FUNC6 (struct ecore_exe_queue_obj*,struct ecore_exeq_elem*) ; 
 scalar_t__ FUNC7 (struct ecore_vlan_mac_obj*) ; 

__attribute__((used)) static inline int FUNC8(struct bxe_softc *sc,
					      union ecore_qable_obj *qo,
					      struct ecore_exeq_elem *elem)
{
	struct ecore_vlan_mac_obj *o = &qo->vlan_mac;
	struct ecore_vlan_mac_registry_elem *pos;
	struct ecore_exe_queue_obj *exeq = &o->exe_queue;
	struct ecore_exeq_elem query_elem;

	/* If this classification can not be deleted (doesn't exist)
	 * - return a ECORE_EXIST.
	 */
	pos = o->check_del(sc, o, &elem->cmd_data.vlan_mac.u);
	if (!pos) {
		FUNC2(sc, "DEL command is not allowed considering current registry state\n");
		return ECORE_EXISTS;
	}

	/* Check if there are pending DEL or MOVE commands for this
	 * MAC/VLAN/VLAN-MAC. Return an error if so.
	 */
	FUNC1(&query_elem, elem, sizeof(query_elem));

	/* Check for MOVE commands */
	query_elem.cmd_data.vlan_mac.cmd = ECORE_VLAN_MAC_MOVE;
	if (exeq->get(exeq, &query_elem)) {
		FUNC0("There is a pending MOVE command already\n");
		return ECORE_INVAL;
	}

	/* Check for DEL commands */
	if (exeq->get(exeq, elem)) {
		FUNC2(sc, "There is a pending DEL command already\n");
		return ECORE_EXISTS;
	}

	/* Return the credit to the credit pool if not requested not to */
	if (!(FUNC3(ECORE_DONT_CONSUME_CAM_CREDIT,
			     &elem->cmd_data.vlan_mac.vlan_mac_flags) ||
	    o->put_credit(o))) {
		FUNC0("Failed to return a credit\n");
		return ECORE_INVAL;
	}

	return ECORE_SUCCESS;
}