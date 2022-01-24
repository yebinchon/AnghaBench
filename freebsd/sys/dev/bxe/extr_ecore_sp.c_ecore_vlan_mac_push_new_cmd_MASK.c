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
struct TYPE_4__ {int cmd; } ;
struct ecore_vlan_mac_ramrod_params {TYPE_2__ user_req; int /*<<< orphan*/  ramrod_flags; struct ecore_vlan_mac_obj* vlan_mac_obj; } ;
struct ecore_vlan_mac_obj {int /*<<< orphan*/  exe_queue; } ;
struct TYPE_3__ {int /*<<< orphan*/  vlan_mac; } ;
struct ecore_exeq_elem {int cmd_len; TYPE_1__ cmd_data; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int ECORE_NOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  ECORE_VLAN_MAC_MOVE 128 
 int /*<<< orphan*/  RAMROD_RESTORE ; 
 int FUNC2 (struct bxe_softc*,int /*<<< orphan*/ *,struct ecore_exeq_elem*,int) ; 
 struct ecore_exeq_elem* FUNC3 (struct bxe_softc*) ; 

__attribute__((used)) static inline int FUNC4(
	struct bxe_softc *sc,
	struct ecore_vlan_mac_ramrod_params *p)
{
	struct ecore_exeq_elem *elem;
	struct ecore_vlan_mac_obj *o = p->vlan_mac_obj;
	bool restore = FUNC1(RAMROD_RESTORE, &p->ramrod_flags);

	/* Allocate the execution queue element */
	elem = FUNC3(sc);
	if (!elem)
		return ECORE_NOMEM;

	/* Set the command 'length' */
	switch (p->user_req.cmd) {
	case ECORE_VLAN_MAC_MOVE:
		elem->cmd_len = 2;
		break;
	default:
		elem->cmd_len = 1;
	}

	/* Fill the object specific info */
	FUNC0(&elem->cmd_data.vlan_mac, &p->user_req, sizeof(p->user_req));

	/* Try to add a new command to the pending list */
	return FUNC2(sc, &o->exe_queue, elem, restore);
}