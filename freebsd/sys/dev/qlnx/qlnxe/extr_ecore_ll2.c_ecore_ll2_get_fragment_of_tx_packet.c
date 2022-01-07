
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct ecore_ll2_tx_packet {scalar_t__ bd_used; TYPE_1__* bds_set; } ;
struct TYPE_4__ {scalar_t__ cur_completing_bd_idx; int b_completing_packet; struct ecore_ll2_tx_packet cur_completing_packet; } ;
struct ecore_ll2_info {TYPE_2__ tx_queue; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef int dma_addr_t ;
struct TYPE_3__ {int tx_frag; } ;


 int ECORE_INVAL ;
 int ECORE_SUCCESS ;
 struct ecore_ll2_info* OSAL_NULL ;
 struct ecore_ll2_info* ecore_ll2_handle_sanity (struct ecore_hwfn*,int ) ;

enum _ecore_status_t
ecore_ll2_get_fragment_of_tx_packet(struct ecore_hwfn *p_hwfn,
        u8 connection_handle,
        dma_addr_t *p_addr,
        bool *b_last_fragment)
{
 struct ecore_ll2_tx_packet *p_pkt;
 struct ecore_ll2_info *p_ll2_conn;
 u16 cur_frag_idx = 0;

 p_ll2_conn = ecore_ll2_handle_sanity(p_hwfn, connection_handle);
 if (p_ll2_conn == OSAL_NULL)
  return ECORE_INVAL;
 p_pkt = &p_ll2_conn->tx_queue.cur_completing_packet;

 if (!p_ll2_conn->tx_queue.b_completing_packet || !p_addr)
  return ECORE_INVAL;

 if (p_ll2_conn->tx_queue.cur_completing_bd_idx == p_pkt->bd_used)
  return ECORE_INVAL;


 cur_frag_idx = p_ll2_conn->tx_queue.cur_completing_bd_idx++;
 *p_addr = p_pkt->bds_set[cur_frag_idx].tx_frag;
 if (b_last_fragment)
  *b_last_fragment = p_pkt->bd_used ==
       p_ll2_conn->tx_queue.cur_completing_bd_idx;

 return ECORE_SUCCESS;
}
