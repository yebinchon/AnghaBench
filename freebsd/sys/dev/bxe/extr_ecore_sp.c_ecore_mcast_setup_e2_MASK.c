#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct eth_multicast_rules_ramrod_data {int dummy; } ;
struct ecore_raw_obj {int /*<<< orphan*/  rdata_mapping; int /*<<< orphan*/  cid; int /*<<< orphan*/  (* clear_pending ) (struct ecore_raw_obj*) ;scalar_t__ rdata; } ;
struct ecore_mcast_ramrod_params {scalar_t__ mcast_list_len; int /*<<< orphan*/  ramrod_flags; struct ecore_mcast_obj* mcast_obj; } ;
struct ecore_mcast_obj {scalar_t__ total_pending_num; int max_cmd_len; int /*<<< orphan*/  (* clear_sched ) (struct ecore_mcast_obj*) ;int /*<<< orphan*/  pending_cmds_head; struct ecore_raw_obj raw; } ;
struct bxe_softc {int dummy; } ;
typedef  enum ecore_mcast_cmd { ____Placeholder_ecore_mcast_cmd } ecore_mcast_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct eth_multicast_rules_ramrod_data*,int /*<<< orphan*/ ,int) ; 
 int ECORE_PENDING ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ETH_CONNECTION_TYPE ; 
 int /*<<< orphan*/  RAMROD_CMD_ID_ETH_MULTICAST_RULES ; 
 int /*<<< orphan*/  RAMROD_DRV_CLR_ONLY ; 
 int FUNC4 (struct bxe_softc*,struct ecore_mcast_ramrod_params*,int,int) ; 
 int FUNC5 (struct bxe_softc*,struct ecore_mcast_ramrod_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,struct ecore_mcast_obj*) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*,struct ecore_mcast_ramrod_params*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ecore_mcast_obj*) ; 
 int /*<<< orphan*/  FUNC10 (struct ecore_raw_obj*) ; 

__attribute__((used)) static int FUNC11(struct bxe_softc *sc,
				struct ecore_mcast_ramrod_params *p,
				enum ecore_mcast_cmd cmd)
{
	struct ecore_raw_obj *raw = &p->mcast_obj->raw;
	struct ecore_mcast_obj *o = p->mcast_obj;
	struct eth_multicast_rules_ramrod_data *data =
		(struct eth_multicast_rules_ramrod_data *)(raw->rdata);
	int cnt = 0, rc;

	/* Reset the ramrod data buffer */
	FUNC2(data, 0, sizeof(*data));

	cnt = FUNC5(sc, p);

	/* If there are no more pending commands - clear SCHEDULED state */
	if (FUNC1(&o->pending_cmds_head))
		o->clear_sched(o);

	/* The below may be TRUE iff there was enough room in ramrod
	 * data for all pending commands and for the current
	 * command. Otherwise the current command would have been added
	 * to the pending commands and p->mcast_list_len would have been
	 * zeroed.
	 */
	if (p->mcast_list_len > 0)
		cnt = FUNC4(sc, p, cmd, cnt);

	/* We've pulled out some MACs - update the total number of
	 * outstanding.
	 */
	o->total_pending_num -= cnt;

	/* send a ramrod */
	FUNC0(o->total_pending_num < 0);
	FUNC0(cnt > o->max_cmd_len);

	FUNC7(sc, p, (uint8_t)cnt);

	/* Update a registry size if there are no more pending operations.
	 *
	 * We don't want to change the value of the registry size if there are
	 * pending operations because we want it to always be equal to the
	 * exact or the approximate number (see ecore_mcast_validate_e2()) of
	 * set bins after the last requested operation in order to properly
	 * evaluate the size of the next DEL/RESTORE operation.
	 *
	 * Note that we update the registry itself during command(s) handling
	 * - see ecore_mcast_set_one_rule_e2(). That's because for 57712 we
	 * aggregate multiple commands (ADD/DEL/RESTORE) into one ramrod but
	 * with a limited amount of update commands (per MAC/bin) and we don't
	 * know in this scope what the actual state of bins configuration is
	 * going to be after this ramrod.
	 */
	if (!o->total_pending_num)
		FUNC6(sc, o);

	/* If CLEAR_ONLY was requested - don't send a ramrod and clear
	 * RAMROD_PENDING status immediately.
	 */
	if (FUNC3(RAMROD_DRV_CLR_ONLY, &p->ramrod_flags)) {
		raw->clear_pending(raw);
		return ECORE_SUCCESS;
	} else {
		/* No need for an explicit memory barrier here as long as we
		 * ensure the ordering of writing to the SPQ element
		 * and updating of the SPQ producer which involves a memory
		 * read. If the memory read is removed we will have to put a
		 * full memory barrier there (inside ecore_sp_post()).
		 */

		/* Send a ramrod */
		rc = FUNC8( sc,
				    RAMROD_CMD_ID_ETH_MULTICAST_RULES,
				    raw->cid,
				    raw->rdata_mapping,
				    ETH_CONNECTION_TYPE);
		if (rc)
			return rc;

		/* Ramrod completion is pending */
		return ECORE_PENDING;
	}
}