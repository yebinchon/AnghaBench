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
typedef  int /*<<< orphan*/  uint16_t ;
struct eth_rss_update_ramrod_data {int /*<<< orphan*/ * indirection_table; int /*<<< orphan*/  rss_engine_id; int /*<<< orphan*/  rss_result_mask; int /*<<< orphan*/  capabilities; int /*<<< orphan*/ * rss_key; int /*<<< orphan*/  rss_mode; int /*<<< orphan*/  echo; } ;
struct ecore_raw_obj {int cid; int state; int /*<<< orphan*/  rdata_mapping; scalar_t__ rdata; } ;
struct ecore_rss_config_obj {int /*<<< orphan*/ * ind_table; int /*<<< orphan*/  engine_id; struct ecore_raw_obj raw; } ;
struct ecore_config_rss_params {int /*<<< orphan*/ * ind_table; int /*<<< orphan*/  rss_result_mask; int /*<<< orphan*/ * rss_key; int /*<<< orphan*/  rss_flags; struct ecore_rss_config_obj* rss_obj; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct eth_rss_update_ramrod_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,char*,...) ; 
 int ECORE_PENDING ; 
 int /*<<< orphan*/  ECORE_RSS_IPV4 ; 
 int /*<<< orphan*/  ECORE_RSS_IPV4_TCP ; 
 int /*<<< orphan*/  ECORE_RSS_IPV4_UDP ; 
 int /*<<< orphan*/  ECORE_RSS_IPV4_VXLAN ; 
 int /*<<< orphan*/  ECORE_RSS_IPV6 ; 
 int /*<<< orphan*/  ECORE_RSS_IPV6_TCP ; 
 int /*<<< orphan*/  ECORE_RSS_IPV6_UDP ; 
 int /*<<< orphan*/  ECORE_RSS_IPV6_VXLAN ; 
 int /*<<< orphan*/  ECORE_RSS_MODE_DISABLED ; 
 int /*<<< orphan*/  ECORE_RSS_MODE_REGULAR ; 
 int /*<<< orphan*/  ECORE_RSS_SET_SRCH ; 
 int /*<<< orphan*/  ECORE_RSS_TUNN_INNER_HDRS ; 
 int ECORE_SWCID_MASK ; 
 int ECORE_SWCID_SHIFT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ETH_CONNECTION_TYPE ; 
 int /*<<< orphan*/  ETH_RSS_MODE_DISABLED ; 
 int /*<<< orphan*/  ETH_RSS_MODE_REGULAR ; 
 int /*<<< orphan*/  ETH_RSS_UPDATE_RAMROD_DATA_IPV4_CAPABILITY ; 
 int /*<<< orphan*/  ETH_RSS_UPDATE_RAMROD_DATA_IPV4_TCP_CAPABILITY ; 
 int /*<<< orphan*/  ETH_RSS_UPDATE_RAMROD_DATA_IPV4_UDP_CAPABILITY ; 
 int /*<<< orphan*/  ETH_RSS_UPDATE_RAMROD_DATA_IPV4_VXLAN_CAPABILITY ; 
 int /*<<< orphan*/  ETH_RSS_UPDATE_RAMROD_DATA_IPV6_CAPABILITY ; 
 int /*<<< orphan*/  ETH_RSS_UPDATE_RAMROD_DATA_IPV6_TCP_CAPABILITY ; 
 int /*<<< orphan*/  ETH_RSS_UPDATE_RAMROD_DATA_IPV6_UDP_CAPABILITY ; 
 int /*<<< orphan*/  ETH_RSS_UPDATE_RAMROD_DATA_IPV6_VXLAN_CAPABILITY ; 
 int /*<<< orphan*/  ETH_RSS_UPDATE_RAMROD_DATA_TUNN_INNER_HDRS_CAPABILITY ; 
 int /*<<< orphan*/  ETH_RSS_UPDATE_RAMROD_DATA_UPDATE_RSS_KEY ; 
 int /*<<< orphan*/  RAMROD_CMD_ID_ETH_RSS_UPDATE ; 
 int T_ETH_INDIRECTION_TABLE_SIZE ; 
 int FUNC6 (struct bxe_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct bxe_softc *sc,
			   struct ecore_config_rss_params *p)
{
	struct ecore_rss_config_obj *o = p->rss_obj;
	struct ecore_raw_obj *r = &o->raw;
	struct eth_rss_update_ramrod_data *data =
		(struct eth_rss_update_ramrod_data *)(r->rdata);
	uint16_t caps = 0;
	uint8_t rss_mode = 0;
	int rc;

	FUNC3(data, 0, sizeof(*data));

	FUNC4(sc, "Configuring RSS\n");

	/* Set an echo field */
	data->echo = FUNC1((r->cid & ECORE_SWCID_MASK) |
				 (r->state << ECORE_SWCID_SHIFT));

	/* RSS mode */
	if (FUNC5(ECORE_RSS_MODE_DISABLED, &p->rss_flags))
		rss_mode = ETH_RSS_MODE_DISABLED;
	else if (FUNC5(ECORE_RSS_MODE_REGULAR, &p->rss_flags))
		rss_mode = ETH_RSS_MODE_REGULAR;

	data->rss_mode = rss_mode;

	FUNC4(sc, "rss_mode=%d\n", rss_mode);

	/* RSS capabilities */
	if (FUNC5(ECORE_RSS_IPV4, &p->rss_flags))
		caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV4_CAPABILITY;

	if (FUNC5(ECORE_RSS_IPV4_TCP, &p->rss_flags))
		caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV4_TCP_CAPABILITY;

	if (FUNC5(ECORE_RSS_IPV4_UDP, &p->rss_flags))
		caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV4_UDP_CAPABILITY;

	if (FUNC5(ECORE_RSS_IPV6, &p->rss_flags))
		caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV6_CAPABILITY;

	if (FUNC5(ECORE_RSS_IPV6_TCP, &p->rss_flags))
		caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV6_TCP_CAPABILITY;

	if (FUNC5(ECORE_RSS_IPV6_UDP, &p->rss_flags))
		caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV6_UDP_CAPABILITY;

	if (FUNC5(ECORE_RSS_IPV4_VXLAN, &p->rss_flags))
		caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV4_VXLAN_CAPABILITY;

	if (FUNC5(ECORE_RSS_IPV6_VXLAN, &p->rss_flags))
		caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV6_VXLAN_CAPABILITY;

	if (FUNC5(ECORE_RSS_TUNN_INNER_HDRS, &p->rss_flags))
		caps |= ETH_RSS_UPDATE_RAMROD_DATA_TUNN_INNER_HDRS_CAPABILITY;

	/* RSS keys */
	if (FUNC5(ECORE_RSS_SET_SRCH, &p->rss_flags)) {
		FUNC2(&data->rss_key[0], &p->rss_key[0],
		       sizeof(data->rss_key));
		caps |= ETH_RSS_UPDATE_RAMROD_DATA_UPDATE_RSS_KEY;
	}

	data->capabilities = FUNC0(caps);

	/* Hashing mask */
	data->rss_result_mask = p->rss_result_mask;

	/* RSS engine ID */
	data->rss_engine_id = o->engine_id;

	FUNC4(sc, "rss_engine_id=%d\n", data->rss_engine_id);

	/* Indirection table */
	FUNC2(data->indirection_table, p->ind_table,
		  T_ETH_INDIRECTION_TABLE_SIZE);

	/* Remember the last configuration */
	FUNC2(o->ind_table, p->ind_table, T_ETH_INDIRECTION_TABLE_SIZE);


	/* No need for an explicit memory barrier here as long as we
	 * ensure the ordering of writing to the SPQ element
	 * and updating of the SPQ producer which involves a memory
	 * read. If the memory read is removed we will have to put a
	 * full memory barrier there (inside ecore_sp_post()).
	 */

	/* Send a ramrod */
	rc = FUNC6(sc,
			     RAMROD_CMD_ID_ETH_RSS_UPDATE,
			     r->cid,
			     r->rdata_mapping,
			     ETH_CONNECTION_TYPE);

	if (rc < 0)
		return rc;

	return ECORE_PENDING;
}