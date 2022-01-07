
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
typedef int tx_pkt ;
struct ecore_ooo_buffer {int packet_length; int vlan; scalar_t__ placement_offset; scalar_t__ rx_buffer_phys_addr; } ;
struct ecore_ll2_tx_pkt_info {int num_of_bds; int tx_dest; struct ecore_ooo_buffer* cookie; int first_frag_len; scalar_t__ first_frag; scalar_t__ l4_hdr_offset_w; scalar_t__ bd_flags; int vlan; } ;
struct ecore_ll2_info {int my_id; scalar_t__ tx_dest; } ;
struct ecore_hwfn {int p_ooo_info; } ;
typedef enum ecore_ll2_tx_dest { ____Placeholder_ecore_ll2_tx_dest } ecore_ll2_tx_dest ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef scalar_t__ dma_addr_t ;


 int CORE_TX_BD_DATA_FORCE_VLAN_MODE ;
 int CORE_TX_BD_DATA_L4_PROTOCOL ;
 int ECORE_SUCCESS ;
 int OSAL_MEM_ZERO (struct ecore_ll2_tx_pkt_info*,int) ;
 int SET_FIELD (scalar_t__,int ,int) ;
 int ecore_ll2_prepare_tx_packet (struct ecore_hwfn*,int ,struct ecore_ll2_tx_pkt_info*,int) ;
 struct ecore_ooo_buffer* ecore_ooo_get_ready_buffer (int ) ;
 int ecore_ooo_put_ready_buffer (int ,struct ecore_ooo_buffer*,int) ;

__attribute__((used)) static void
ecore_ooo_submit_tx_buffers(struct ecore_hwfn *p_hwfn,
       struct ecore_ll2_info *p_ll2_conn)
{
 struct ecore_ll2_tx_pkt_info tx_pkt;
 struct ecore_ooo_buffer *p_buffer;
 dma_addr_t first_frag;
 u16 l4_hdr_offset_w;
 u8 bd_flags;
 enum _ecore_status_t rc;


 while ((p_buffer = ecore_ooo_get_ready_buffer(p_hwfn->p_ooo_info))) {
  l4_hdr_offset_w = 0;
  bd_flags = 0;

  first_frag = p_buffer->rx_buffer_phys_addr +
        p_buffer->placement_offset;
  SET_FIELD(bd_flags, CORE_TX_BD_DATA_FORCE_VLAN_MODE, 1);
  SET_FIELD(bd_flags, CORE_TX_BD_DATA_L4_PROTOCOL, 1);

  OSAL_MEM_ZERO(&tx_pkt, sizeof(tx_pkt));
  tx_pkt.num_of_bds = 1;
  tx_pkt.vlan = p_buffer->vlan;
  tx_pkt.bd_flags = bd_flags;
  tx_pkt.l4_hdr_offset_w = l4_hdr_offset_w;
  tx_pkt.tx_dest = (enum ecore_ll2_tx_dest)p_ll2_conn->tx_dest;
  tx_pkt.first_frag = first_frag;
  tx_pkt.first_frag_len = p_buffer->packet_length;
  tx_pkt.cookie = p_buffer;

  rc = ecore_ll2_prepare_tx_packet(p_hwfn, p_ll2_conn->my_id,
       &tx_pkt, 1);
  if (rc != ECORE_SUCCESS) {
   ecore_ooo_put_ready_buffer(p_hwfn->p_ooo_info,
         p_buffer, 0);
   break;
  }
 }
}
