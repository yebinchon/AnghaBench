#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int fcoe; int iport; int pfvf_vld; int vnic; int ovlan_vld; int vlan_vld; int vlan; int tos; int proto; int ethtype; int macidx; int matchtype; int frag; int dport; int sport; int /*<<< orphan*/  sip; int /*<<< orphan*/  dip; } ;
struct TYPE_4__ {int fcoe; int iport; int pfvf_vld; int vnic; int ovlan_vld; int vlan_vld; int vlan; int tos; int proto; int ethtype; int macidx; int matchtype; int frag; int dport; int sport; int /*<<< orphan*/  sip; int /*<<< orphan*/  dip; } ;
struct TYPE_6__ {scalar_t__ action; int eport; int* dmac; int* smac; scalar_t__ newvlan; int vlan; scalar_t__ dirsteer; int iq; scalar_t__ dirsteerhash; scalar_t__ rpttid; scalar_t__ prio; scalar_t__ maskhash; scalar_t__ newsmac; scalar_t__ newdmac; TYPE_2__ mask; TYPE_1__ val; int /*<<< orphan*/  type; } ;
struct t4_filter {int idx; int l2tidx; int smtidx; TYPE_3__ fs; int /*<<< orphan*/  hits; } ;

/* Variables and functions */
 scalar_t__ FILTER_DROP ; 
 scalar_t__ FILTER_SWITCH ; 
#define  T4_FILTER_ETH_TYPE 137 
#define  T4_FILTER_FCoE 136 
 int T4_FILTER_IC_VNIC ; 
#define  T4_FILTER_IP_FRAGMENT 135 
#define  T4_FILTER_IP_PROTO 134 
#define  T4_FILTER_IP_TOS 133 
#define  T4_FILTER_MAC_IDX 132 
#define  T4_FILTER_MPS_HIT_TYPE 131 
#define  T4_FILTER_PORT 130 
#define  T4_FILTER_VLAN 129 
#define  T4_FILTER_VNIC 128 
 int /*<<< orphan*/  UINT64_MAX ; 
 scalar_t__ VLAN_INSERT ; 
 scalar_t__ VLAN_REMOVE ; 
 scalar_t__ VLAN_REWRITE ; 
 int chip_id ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(struct t4_filter *t, uint32_t mode)
{
	uint32_t i;

	FUNC1("%4d", t->idx);
	if (t->hits == UINT64_MAX)
		FUNC1(" %8s", "-");
	else
		FUNC1(" %8ju", t->hits);

	/*
	 * Compressed header portion of filter.
	 */
	for (i = T4_FILTER_FCoE; i <= T4_FILTER_IP_FRAGMENT; i <<= 1) {
		switch (mode & i) {
		case T4_FILTER_FCoE:
			FUNC1("  %1d/%1d", t->fs.val.fcoe, t->fs.mask.fcoe);
			break;

		case T4_FILTER_PORT:
			FUNC1("  %1d/%1d", t->fs.val.iport, t->fs.mask.iport);
			break;

		case T4_FILTER_VNIC:
			if (mode & T4_FILTER_IC_VNIC) {
				FUNC1(" %1d:%1x:%02x/%1d:%1x:%02x",
				    t->fs.val.pfvf_vld,
				    (t->fs.val.vnic >> 13) & 0x7,
				    t->fs.val.vnic & 0x1fff,
				    t->fs.mask.pfvf_vld,
				    (t->fs.mask.vnic >> 13) & 0x7,
				    t->fs.mask.vnic & 0x1fff);
			} else {
				FUNC1(" %1d:%04x/%1d:%04x",
				    t->fs.val.ovlan_vld, t->fs.val.vnic,
				    t->fs.mask.ovlan_vld, t->fs.mask.vnic);
			}
			break;

		case T4_FILTER_VLAN:
			FUNC1(" %1d:%04x/%1d:%04x",
			    t->fs.val.vlan_vld, t->fs.val.vlan,
			    t->fs.mask.vlan_vld, t->fs.mask.vlan);
			break;

		case T4_FILTER_IP_TOS:
			FUNC1(" %02x/%02x", t->fs.val.tos, t->fs.mask.tos);
			break;

		case T4_FILTER_IP_PROTO:
			FUNC1(" %02x/%02x", t->fs.val.proto, t->fs.mask.proto);
			break;

		case T4_FILTER_ETH_TYPE:
			FUNC1(" %04x/%04x", t->fs.val.ethtype,
			    t->fs.mask.ethtype);
			break;

		case T4_FILTER_MAC_IDX:
			FUNC1(" %03x/%03x", t->fs.val.macidx,
			    t->fs.mask.macidx);
			break;

		case T4_FILTER_MPS_HIT_TYPE:
			FUNC1(" %1x/%1x", t->fs.val.matchtype,
			    t->fs.mask.matchtype);
			break;

		case T4_FILTER_IP_FRAGMENT:
			FUNC1("  %1d/%1d", t->fs.val.frag, t->fs.mask.frag);
			break;

		default:
			/* compressed filter field not enabled */
			break;
		}
	}

	/*
	 * Fixed portion of filter.
	 */
	FUNC0(t->fs.type, t->fs.val.dip, t->fs.mask.dip);
	FUNC0(t->fs.type, t->fs.val.sip, t->fs.mask.sip);
	FUNC1(" %04x/%04x %04x/%04x",
		 t->fs.val.dport, t->fs.mask.dport,
		 t->fs.val.sport, t->fs.mask.sport);

	/*
	 * Variable length filter action.
	 */
	if (t->fs.action == FILTER_DROP)
		FUNC1(" Drop");
	else if (t->fs.action == FILTER_SWITCH) {
		FUNC1(" Switch: port=%d", t->fs.eport);
	if (t->fs.newdmac)
		FUNC1(
			", dmac=%02x:%02x:%02x:%02x:%02x:%02x "
			", l2tidx=%d",
			t->fs.dmac[0], t->fs.dmac[1],
			t->fs.dmac[2], t->fs.dmac[3],
			t->fs.dmac[4], t->fs.dmac[5],
			t->l2tidx);
	if (t->fs.newsmac)
		FUNC1(
			", smac=%02x:%02x:%02x:%02x:%02x:%02x "
			", smtidx=%d",
			t->fs.smac[0], t->fs.smac[1],
			t->fs.smac[2], t->fs.smac[3],
			t->fs.smac[4], t->fs.smac[5],
			t->smtidx);
	if (t->fs.newvlan == VLAN_REMOVE)
		FUNC1(", vlan=none");
	else if (t->fs.newvlan == VLAN_INSERT)
		FUNC1(", vlan=insert(%x)", t->fs.vlan);
	else if (t->fs.newvlan == VLAN_REWRITE)
		FUNC1(", vlan=rewrite(%x)", t->fs.vlan);
	} else {
		FUNC1(" Pass: Q=");
		if (t->fs.dirsteer == 0) {
			FUNC1("RSS");
			if (t->fs.maskhash)
				FUNC1("(region %d)", t->fs.iq << 1);
		} else {
			FUNC1("%d", t->fs.iq);
			if (t->fs.dirsteerhash == 0)
				FUNC1("(QID)");
			else
				FUNC1("(hash)");
		}
	}
	if (chip_id <= 5 && t->fs.prio)
		FUNC1(" Prio");
	if (t->fs.rpttid)
		FUNC1(" RptTID");
	FUNC1("\n");
}