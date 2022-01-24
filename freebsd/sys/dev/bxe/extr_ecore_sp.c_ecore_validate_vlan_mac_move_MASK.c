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
struct ecore_vlan_mac_obj {scalar_t__ (* put_credit ) (struct ecore_vlan_mac_obj*) ;scalar_t__ (* get_credit ) (struct ecore_vlan_mac_obj*) ;int /*<<< orphan*/  (* check_move ) (struct bxe_softc*,struct ecore_vlan_mac_obj*,struct ecore_vlan_mac_obj*,int /*<<< orphan*/ *) ;struct ecore_exe_queue_obj exe_queue; } ;
union ecore_qable_obj {struct ecore_vlan_mac_obj vlan_mac; } ;
struct TYPE_3__ {int /*<<< orphan*/  vlan_mac_flags; int /*<<< orphan*/  cmd; int /*<<< orphan*/  u; struct ecore_vlan_mac_obj* target_obj; } ;
struct TYPE_4__ {TYPE_1__ vlan_mac; } ;
struct ecore_exeq_elem {TYPE_2__ cmd_data; } ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  query_elem ;

/* Variables and functions */
 int /*<<< orphan*/  ECORE_DONT_CONSUME_CAM_CREDIT ; 
 int /*<<< orphan*/  ECORE_DONT_CONSUME_CAM_CREDIT_DEST ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ECORE_EXISTS ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_exeq_elem*,struct ecore_exeq_elem*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*) ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ECORE_VLAN_MAC_ADD ; 
 int /*<<< orphan*/  ECORE_VLAN_MAC_DEL ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,struct ecore_vlan_mac_obj*,struct ecore_vlan_mac_obj*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct ecore_exe_queue_obj*,struct ecore_exeq_elem*) ; 
 scalar_t__ FUNC6 (struct ecore_exe_queue_obj*,struct ecore_exeq_elem*) ; 
 scalar_t__ FUNC7 (struct ecore_exe_queue_obj*,struct ecore_exeq_elem*) ; 
 scalar_t__ FUNC8 (struct ecore_vlan_mac_obj*) ; 
 scalar_t__ FUNC9 (struct ecore_vlan_mac_obj*) ; 
 scalar_t__ FUNC10 (struct ecore_vlan_mac_obj*) ; 

__attribute__((used)) static inline int FUNC11(struct bxe_softc *sc,
					       union ecore_qable_obj *qo,
					       struct ecore_exeq_elem *elem)
{
	struct ecore_vlan_mac_obj *src_o = &qo->vlan_mac;
	struct ecore_vlan_mac_obj *dest_o = elem->cmd_data.vlan_mac.target_obj;
	struct ecore_exeq_elem query_elem;
	struct ecore_exe_queue_obj *src_exeq = &src_o->exe_queue;
	struct ecore_exe_queue_obj *dest_exeq = &dest_o->exe_queue;

	/* Check if we can perform this operation based on the current registry
	 * state.
	 */
	if (!src_o->check_move(sc, src_o, dest_o,
			       &elem->cmd_data.vlan_mac.u)) {
		FUNC2(sc, "MOVE command is not allowed considering current registry state\n");
		return ECORE_INVAL;
	}

	/* Check if there is an already pending DEL or MOVE command for the
	 * source object or ADD command for a destination object. Return an
	 * error if so.
	 */
	FUNC1(&query_elem, elem, sizeof(query_elem));

	/* Check DEL on source */
	query_elem.cmd_data.vlan_mac.cmd = ECORE_VLAN_MAC_DEL;
	if (src_exeq->get(src_exeq, &query_elem)) {
		FUNC0("There is a pending DEL command on the source queue already\n");
		return ECORE_INVAL;
	}

	/* Check MOVE on source */
	if (src_exeq->get(src_exeq, elem)) {
		FUNC2(sc, "There is a pending MOVE command already\n");
		return ECORE_EXISTS;
	}

	/* Check ADD on destination */
	query_elem.cmd_data.vlan_mac.cmd = ECORE_VLAN_MAC_ADD;
	if (dest_exeq->get(dest_exeq, &query_elem)) {
		FUNC0("There is a pending ADD command on the destination queue already\n");
		return ECORE_INVAL;
	}

	/* Consume the credit if not requested not to */
	if (!(FUNC3(ECORE_DONT_CONSUME_CAM_CREDIT_DEST,
			     &elem->cmd_data.vlan_mac.vlan_mac_flags) ||
	    dest_o->get_credit(dest_o)))
		return ECORE_INVAL;

	if (!(FUNC3(ECORE_DONT_CONSUME_CAM_CREDIT,
			     &elem->cmd_data.vlan_mac.vlan_mac_flags) ||
	    src_o->put_credit(src_o))) {
		/* return the credit taken from dest... */
		dest_o->put_credit(dest_o);
		return ECORE_INVAL;
	}

	return ECORE_SUCCESS;
}