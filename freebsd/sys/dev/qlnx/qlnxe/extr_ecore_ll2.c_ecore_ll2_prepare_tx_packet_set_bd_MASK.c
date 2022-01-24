#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct ecore_ll2_tx_pkt_info {scalar_t__ ecore_roce_flavor; int tx_dest; size_t vlan; int remove_stag; size_t l4_hdr_offset_w; size_t bd_flags; int num_of_bds; size_t first_frag_len; int /*<<< orphan*/  first_frag; int /*<<< orphan*/  calc_ip_len; int /*<<< orphan*/  enable_l4_cksum; int /*<<< orphan*/  enable_ip_cksum; } ;
struct ecore_ll2_tx_packet {TYPE_5__* bds_set; } ;
struct ecore_chain {int dummy; } ;
struct TYPE_9__ {int cur_send_frag_num; struct ecore_chain txq_chain; } ;
struct TYPE_8__ {scalar_t__ conn_type; } ;
struct ecore_ll2_info {TYPE_3__ tx_queue; TYPE_2__ input; int /*<<< orphan*/  cid; int /*<<< orphan*/  queue_id; } ;
struct ecore_hwfn {TYPE_1__* p_dev; } ;
struct TYPE_10__ {int as_bitfield; } ;
struct TYPE_12__ {int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; } ;
struct core_tx_bd {int nw_vlan_or_lb_echo; size_t bitfield1; int nbytes; TYPE_4__ bd_data; TYPE_6__ addr; } ;
typedef  enum core_tx_dest { ____Placeholder_core_tx_dest } core_tx_dest ;
typedef  enum core_roce_flavor_type { ____Placeholder_core_roce_flavor_type } core_roce_flavor_type ;
struct TYPE_11__ {scalar_t__ frag_len; scalar_t__ tx_frag; struct core_tx_bd* txq_bd; } ;
struct TYPE_7__ {int /*<<< orphan*/  mf_bits; } ;

/* Variables and functions */
 int CORE_ROCE ; 
 int CORE_RROCE ; 
 int /*<<< orphan*/  CORE_TX_BD_DATA_DISABLE_STAG_INSERTION ; 
 int /*<<< orphan*/  CORE_TX_BD_DATA_IP_CSUM ; 
 int /*<<< orphan*/  CORE_TX_BD_DATA_IP_LEN ; 
 int /*<<< orphan*/  CORE_TX_BD_DATA_L4_CSUM ; 
 int /*<<< orphan*/  CORE_TX_BD_DATA_NBDS ; 
 int /*<<< orphan*/  CORE_TX_BD_DATA_ROCE_FLAV ; 
 int /*<<< orphan*/  CORE_TX_BD_DATA_START_BD ; 
 int /*<<< orphan*/  CORE_TX_BD_L4_HDR_OFFSET_W ; 
 int /*<<< orphan*/  CORE_TX_BD_TX_DST ; 
 int CORE_TX_DEST_DROP ; 
 int CORE_TX_DEST_LB ; 
 int CORE_TX_DEST_NW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,size_t,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ecore_hwfn*) ; 
 scalar_t__ ECORE_LL2_ROCE ; 
#define  ECORE_LL2_TX_DEST_DROP 130 
#define  ECORE_LL2_TX_DEST_LB 129 
#define  ECORE_LL2_TX_DEST_NW 128 
 scalar_t__ ECORE_LL2_TYPE_FCOE ; 
 scalar_t__ ECORE_LL2_TYPE_OOO ; 
 int /*<<< orphan*/  ECORE_MF_UFP_SPECIFIC ; 
 int ECORE_MSG_LL2 ; 
 int ECORE_MSG_TX_QUEUED ; 
 size_t IWARP_LL2_IN_ORDER_TX_QUEUE ; 
 int FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct core_tx_bd* OSAL_NULL ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (size_t,int /*<<< orphan*/ ,int) ; 
 size_t FUNC7 (struct ecore_chain*) ; 
 scalar_t__ FUNC8 (struct ecore_chain*) ; 

__attribute__((used)) static void FUNC9(
		struct ecore_hwfn *p_hwfn,
		struct ecore_ll2_info *p_ll2,
		struct ecore_ll2_tx_packet *p_curp,
		struct ecore_ll2_tx_pkt_info *pkt)
{
	struct ecore_chain *p_tx_chain = &p_ll2->tx_queue.txq_chain;
	u16 prod_idx = FUNC7(p_tx_chain);
	struct core_tx_bd *start_bd = OSAL_NULL;
	enum core_roce_flavor_type roce_flavor;
	enum core_tx_dest tx_dest;
	u16 bd_data = 0, frag_idx;

	roce_flavor = (pkt->ecore_roce_flavor == ECORE_LL2_ROCE) ?
		CORE_ROCE : CORE_RROCE;

	switch (pkt->tx_dest) {
	case ECORE_LL2_TX_DEST_NW:
		tx_dest = CORE_TX_DEST_NW;
		break;
	case ECORE_LL2_TX_DEST_LB:
		tx_dest = CORE_TX_DEST_LB;
		break;
	case ECORE_LL2_TX_DEST_DROP:
		tx_dest = CORE_TX_DEST_DROP;
		break;
	default:
		tx_dest = CORE_TX_DEST_LB;
		break;
	}

	start_bd = (struct core_tx_bd*)FUNC8(p_tx_chain);

	if (FUNC2(p_hwfn) &&
	    (p_ll2->input.conn_type == ECORE_LL2_TYPE_OOO)) {
		start_bd->nw_vlan_or_lb_echo =
			FUNC3(IWARP_LL2_IN_ORDER_TX_QUEUE);
	} else {
		start_bd->nw_vlan_or_lb_echo = FUNC3(pkt->vlan);
		if (FUNC5(ECORE_MF_UFP_SPECIFIC, &p_hwfn->p_dev->mf_bits) &&
		    (p_ll2->input.conn_type == ECORE_LL2_TYPE_FCOE))
			pkt->remove_stag = true;
	}

	FUNC6(start_bd->bitfield1, CORE_TX_BD_L4_HDR_OFFSET_W,
		  FUNC3(pkt->l4_hdr_offset_w));
	FUNC6(start_bd->bitfield1, CORE_TX_BD_TX_DST, tx_dest);
	bd_data |= pkt->bd_flags;
	FUNC6(bd_data, CORE_TX_BD_DATA_START_BD, 0x1);
	FUNC6(bd_data, CORE_TX_BD_DATA_NBDS, pkt->num_of_bds);
	FUNC6(bd_data, CORE_TX_BD_DATA_ROCE_FLAV, roce_flavor);
	FUNC6(bd_data, CORE_TX_BD_DATA_IP_CSUM, !!(pkt->enable_ip_cksum));
	FUNC6(bd_data, CORE_TX_BD_DATA_L4_CSUM, !!(pkt->enable_l4_cksum));
	FUNC6(bd_data, CORE_TX_BD_DATA_IP_LEN, !!(pkt->calc_ip_len));
	FUNC6(bd_data, CORE_TX_BD_DATA_DISABLE_STAG_INSERTION,
		  !!(pkt->remove_stag));

	start_bd->bd_data.as_bitfield = FUNC3(bd_data);
	FUNC0(start_bd->addr, pkt->first_frag);
	start_bd->nbytes = FUNC3(pkt->first_frag_len);

	FUNC1(p_hwfn, (ECORE_MSG_TX_QUEUED | ECORE_MSG_LL2),
		   "LL2 [q 0x%02x cid 0x%08x type 0x%08x] Tx Producer at [0x%04x] - set with a %04x bytes %02x BDs buffer at %08x:%08x\n",
		   p_ll2->queue_id, p_ll2->cid, p_ll2->input.conn_type,
		   prod_idx, pkt->first_frag_len, pkt->num_of_bds,
		   FUNC4(start_bd->addr.hi),
		   FUNC4(start_bd->addr.lo));

	if (p_ll2->tx_queue.cur_send_frag_num == pkt->num_of_bds)
		return;

	/* Need to provide the packet with additional BDs for frags */
	for (frag_idx = p_ll2->tx_queue.cur_send_frag_num;
	     frag_idx < pkt->num_of_bds; frag_idx++) {
		struct core_tx_bd **p_bd = &p_curp->bds_set[frag_idx].txq_bd;

		*p_bd = (struct core_tx_bd *)FUNC8(p_tx_chain);
		(*p_bd)->bd_data.as_bitfield = 0;
		(*p_bd)->bitfield1 = 0;
		p_curp->bds_set[frag_idx].tx_frag = 0;
		p_curp->bds_set[frag_idx].frag_len = 0;
	}
}