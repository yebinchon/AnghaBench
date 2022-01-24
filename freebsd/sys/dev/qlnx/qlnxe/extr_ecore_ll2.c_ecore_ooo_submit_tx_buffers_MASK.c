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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
typedef  int /*<<< orphan*/  tx_pkt ;
struct ecore_ooo_buffer {int /*<<< orphan*/  packet_length; int /*<<< orphan*/  vlan; scalar_t__ placement_offset; scalar_t__ rx_buffer_phys_addr; } ;
struct ecore_ll2_tx_pkt_info {int num_of_bds; int tx_dest; struct ecore_ooo_buffer* cookie; int /*<<< orphan*/  first_frag_len; scalar_t__ first_frag; scalar_t__ l4_hdr_offset_w; scalar_t__ bd_flags; int /*<<< orphan*/  vlan; } ;
struct ecore_ll2_info {int /*<<< orphan*/  my_id; scalar_t__ tx_dest; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_ooo_info; } ;
typedef  enum ecore_ll2_tx_dest { ____Placeholder_ecore_ll2_tx_dest } ecore_ll2_tx_dest ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CORE_TX_BD_DATA_FORCE_VLAN_MODE ; 
 int /*<<< orphan*/  CORE_TX_BD_DATA_L4_PROTOCOL ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_ll2_tx_pkt_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ,struct ecore_ll2_tx_pkt_info*,int) ; 
 struct ecore_ooo_buffer* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ecore_ooo_buffer*,int) ; 

__attribute__((used)) static void
FUNC5(struct ecore_hwfn *p_hwfn,
			    struct ecore_ll2_info *p_ll2_conn)
{
	struct ecore_ll2_tx_pkt_info tx_pkt;
	struct ecore_ooo_buffer *p_buffer;
	dma_addr_t first_frag;
	u16 l4_hdr_offset_w;
	u8 bd_flags;
	enum _ecore_status_t rc;

	/* Submit Tx buffers here */
	while ((p_buffer = FUNC3(p_hwfn->p_ooo_info))) {
		l4_hdr_offset_w = 0;
		bd_flags = 0;

		first_frag = p_buffer->rx_buffer_phys_addr +
			     p_buffer->placement_offset;
		FUNC1(bd_flags, CORE_TX_BD_DATA_FORCE_VLAN_MODE, 1);
		FUNC1(bd_flags, CORE_TX_BD_DATA_L4_PROTOCOL, 1);

		FUNC0(&tx_pkt, sizeof(tx_pkt));
		tx_pkt.num_of_bds = 1;
		tx_pkt.vlan = p_buffer->vlan;
		tx_pkt.bd_flags = bd_flags;
		tx_pkt.l4_hdr_offset_w = l4_hdr_offset_w;
		tx_pkt.tx_dest = (enum ecore_ll2_tx_dest)p_ll2_conn->tx_dest;
		tx_pkt.first_frag = first_frag;
		tx_pkt.first_frag_len = p_buffer->packet_length;
		tx_pkt.cookie = p_buffer;

		rc = FUNC2(p_hwfn, p_ll2_conn->my_id,
						 &tx_pkt, true);
		if (rc != ECORE_SUCCESS) {
			FUNC4(p_hwfn->p_ooo_info,
						   p_buffer, false);
			break;
		}
	}
}