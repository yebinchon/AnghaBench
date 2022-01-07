
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ecore_ll2_tx_queue {size_t cur_send_frag_num; struct ecore_ll2_tx_packet* cur_send_packet; int free_descq; } ;
struct ecore_ll2_tx_pkt_info {int first_frag_len; int first_frag; int num_of_bds; int cookie; } ;
struct ecore_ll2_tx_packet {TYPE_1__* bds_set; int notify_fw; int bd_used; int cookie; int list_entry; } ;
struct TYPE_2__ {int frag_len; int tx_frag; } ;


 int OSAL_LIST_REMOVE_ENTRY (int *,int *) ;

__attribute__((used)) static void ecore_ll2_prepare_tx_packet_set(struct ecore_ll2_tx_queue *p_tx,
         struct ecore_ll2_tx_packet *p_curp,
         struct ecore_ll2_tx_pkt_info *pkt,
         u8 notify_fw)
{
 OSAL_LIST_REMOVE_ENTRY(&p_curp->list_entry,
          &p_tx->free_descq);
 p_curp->cookie = pkt->cookie;
 p_curp->bd_used = pkt->num_of_bds;
 p_curp->notify_fw = notify_fw;
 p_tx->cur_send_packet = p_curp;
 p_tx->cur_send_frag_num = 0;

 p_curp->bds_set[p_tx->cur_send_frag_num].tx_frag = pkt->first_frag;
 p_curp->bds_set[p_tx->cur_send_frag_num].frag_len = pkt->first_frag_len;
 p_tx->cur_send_frag_num++;
}
