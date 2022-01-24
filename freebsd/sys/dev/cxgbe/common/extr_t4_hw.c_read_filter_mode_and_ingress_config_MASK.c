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
typedef  int uint32_t ;
typedef  int u64 ;
struct tp_params {int hash_filter_mask; void* frag_shift; void* matchtype_shift; void* macmatch_shift; void* ethertype_shift; void* protocol_shift; void* tos_shift; void* vlan_shift; void* vnic_shift; void* port_shift; void* fcoe_shift; int /*<<< orphan*/  ingress_config; int /*<<< orphan*/  vlan_pri_map; } ;
struct TYPE_2__ {struct tp_params tp; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_INGRESS_CONFIG ; 
 int /*<<< orphan*/  A_TP_VLAN_PRI_MAP ; 
 scalar_t__ CHELSIO_T4 ; 
 int /*<<< orphan*/  F_ETHERTYPE ; 
 int /*<<< orphan*/  F_FCOE ; 
 int /*<<< orphan*/  F_FRAGMENTATION ; 
 int /*<<< orphan*/  F_MACMATCH ; 
 int /*<<< orphan*/  F_MPSHITTYPE ; 
 int /*<<< orphan*/  F_PORT ; 
 int /*<<< orphan*/  F_PROTOCOL ; 
 int /*<<< orphan*/  F_TOS ; 
 int /*<<< orphan*/  F_VLAN ; 
 int /*<<< orphan*/  F_VNIC_ID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct adapter*) ; 
 void* FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct adapter *adap,
    bool sleep_ok)
{
	uint32_t v;
	struct tp_params *tpp = &adap->params.tp;

	FUNC4(adap, &tpp->vlan_pri_map, 1, A_TP_VLAN_PRI_MAP,
	    sleep_ok);
	FUNC4(adap, &tpp->ingress_config, 1, A_TP_INGRESS_CONFIG,
	    sleep_ok);

	/*
	 * Now that we have TP_VLAN_PRI_MAP cached, we can calculate the field
	 * shift positions of several elements of the Compressed Filter Tuple
	 * for this adapter which we need frequently ...
	 */
	tpp->fcoe_shift = FUNC2(adap, F_FCOE);
	tpp->port_shift = FUNC2(adap, F_PORT);
	tpp->vnic_shift = FUNC2(adap, F_VNIC_ID);
	tpp->vlan_shift = FUNC2(adap, F_VLAN);
	tpp->tos_shift = FUNC2(adap, F_TOS);
	tpp->protocol_shift = FUNC2(adap, F_PROTOCOL);
	tpp->ethertype_shift = FUNC2(adap, F_ETHERTYPE);
	tpp->macmatch_shift = FUNC2(adap, F_MACMATCH);
	tpp->matchtype_shift = FUNC2(adap, F_MPSHITTYPE);
	tpp->frag_shift = FUNC2(adap, F_FRAGMENTATION);

	if (FUNC1(adap) > CHELSIO_T4) {
		v = FUNC3(adap, FUNC0(3));
		adap->params.tp.hash_filter_mask = v;
		v = FUNC3(adap, FUNC0(4));
		adap->params.tp.hash_filter_mask |= (u64)v << 32;
	}
}