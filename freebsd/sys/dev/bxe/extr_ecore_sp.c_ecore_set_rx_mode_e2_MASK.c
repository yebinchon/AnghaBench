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
typedef  size_t uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  rule_cnt; } ;
struct eth_filter_rules_ramrod_data {TYPE_1__ header; TYPE_2__* rules; } ;
struct ecore_rx_mode_ramrod_params {int /*<<< orphan*/  rdata_mapping; int /*<<< orphan*/  cid; int /*<<< orphan*/  tx_accept_flags; int /*<<< orphan*/  rx_accept_flags; int /*<<< orphan*/  func_id; int /*<<< orphan*/  ramrod_flags; int /*<<< orphan*/  rx_mode_flags; void* cl_id; struct eth_filter_rules_ramrod_data* rdata; } ;
struct bxe_softc {int dummy; } ;
struct TYPE_4__ {void* cmd_general_data; int /*<<< orphan*/  func_id; void* client_id; } ;

/* Variables and functions */
 void* FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct eth_filter_rules_ramrod_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ECORE_PENDING ; 
 int /*<<< orphan*/  ECORE_RX_MODE_FCOE_ETH ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ETH_CONNECTION_TYPE ; 
 void* ETH_FILTER_RULES_CMD_RX_CMD ; 
 void* ETH_FILTER_RULES_CMD_TX_CMD ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  RAMROD_CMD_ID_ETH_FILTER_RULES ; 
 int /*<<< orphan*/  RAMROD_RX ; 
 int /*<<< orphan*/  RAMROD_TX ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,size_t) ; 
 int FUNC6 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct bxe_softc *sc,
				struct ecore_rx_mode_ramrod_params *p)
{
	struct eth_filter_rules_ramrod_data *data = p->rdata;
	int rc;
	uint8_t rule_idx = 0;

	/* Reset the ramrod data buffer */
	FUNC1(data, 0, sizeof(*data));

	/* Setup ramrod data */

	/* Tx (internal switching) */
	if (FUNC3(RAMROD_TX, &p->ramrod_flags)) {
		data->rules[rule_idx].client_id = p->cl_id;
		data->rules[rule_idx].func_id = p->func_id;

		data->rules[rule_idx].cmd_general_data =
			ETH_FILTER_RULES_CMD_TX_CMD;

		FUNC4(sc, &p->tx_accept_flags,
					       &(data->rules[rule_idx++]),
					       FALSE);
	}

	/* Rx */
	if (FUNC3(RAMROD_RX, &p->ramrod_flags)) {
		data->rules[rule_idx].client_id = p->cl_id;
		data->rules[rule_idx].func_id = p->func_id;

		data->rules[rule_idx].cmd_general_data =
			ETH_FILTER_RULES_CMD_RX_CMD;

		FUNC4(sc, &p->rx_accept_flags,
					       &(data->rules[rule_idx++]),
					       FALSE);
	}

	/* If FCoE Queue configuration has been requested configure the Rx and
	 * internal switching modes for this queue in separate rules.
	 *
	 * FCoE queue shell never be set to ACCEPT_ALL packets of any sort:
	 * MCAST_ALL, UCAST_ALL, BCAST_ALL and UNMATCHED.
	 */
	if (FUNC3(ECORE_RX_MODE_FCOE_ETH, &p->rx_mode_flags)) {
		/*  Tx (internal switching) */
		if (FUNC3(RAMROD_TX, &p->ramrod_flags)) {
			data->rules[rule_idx].client_id = FUNC0(sc);
			data->rules[rule_idx].func_id = p->func_id;

			data->rules[rule_idx].cmd_general_data =
						ETH_FILTER_RULES_CMD_TX_CMD;

			FUNC4(sc, &p->tx_accept_flags,
						       &(data->rules[rule_idx]),
						       TRUE);
			rule_idx++;
		}

		/* Rx */
		if (FUNC3(RAMROD_RX, &p->ramrod_flags)) {
			data->rules[rule_idx].client_id = FUNC0(sc);
			data->rules[rule_idx].func_id = p->func_id;

			data->rules[rule_idx].cmd_general_data =
						ETH_FILTER_RULES_CMD_RX_CMD;

			FUNC4(sc, &p->rx_accept_flags,
						       &(data->rules[rule_idx]),
						       TRUE);
			rule_idx++;
		}
	}

	/* Set the ramrod header (most importantly - number of rules to
	 * configure).
	 */
	FUNC5(p->cid, &data->header, rule_idx);

	FUNC2(sc, "About to configure %d rules, rx_accept_flags 0x%lx, tx_accept_flags 0x%lx\n",
		  data->header.rule_cnt, p->rx_accept_flags,
		  p->tx_accept_flags);

	/* No need for an explicit memory barrier here as long as we
	 * ensure the ordering of writing to the SPQ element
	 * and updating of the SPQ producer which involves a memory
	 * read. If the memory read is removed we will have to put a
	 * full memory barrier there (inside ecore_sp_post()).
	 */

	/* Send a ramrod */
	rc = FUNC6(sc,
			   RAMROD_CMD_ID_ETH_FILTER_RULES,
			   p->cid,
			   p->rdata_mapping,
			   ETH_CONNECTION_TYPE);
	if (rc)
		return rc;

	/* Ramrod completion is pending */
	return ECORE_PENDING;
}