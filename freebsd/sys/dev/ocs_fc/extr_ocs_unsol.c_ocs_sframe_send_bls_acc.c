
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ocs_node_t ;
struct TYPE_11__ {TYPE_2__* header; } ;
typedef TYPE_3__ ocs_hw_sequence_t ;
typedef int int32_t ;
struct TYPE_12__ {int rx_id; int ox_id; } ;
typedef TYPE_4__ fc_header_t ;
struct TYPE_13__ {void* high_seq_cnt; void* low_seq_cnt; void* rx_id; void* ox_id; int member_0; } ;
typedef TYPE_5__ fc_ba_acc_payload_t ;
typedef int acc ;
struct TYPE_9__ {TYPE_4__* virt; } ;
struct TYPE_10__ {TYPE_1__ dma; } ;


 int FC_FCTL_END_SEQUENCE ;
 int FC_FCTL_EXCHANGE_RESPONDER ;
 int FC_FCTL_LAST_SEQUENCE ;
 int FC_RCTL_BLS ;
 int FC_RCTL_INFO_UNSOL_DATA ;
 int FC_TYPE_BASIC_LINK ;
 void* UINT16_MAX ;
 int ocs_be16toh (int ) ;
 void* ocs_htobe16 (int ) ;
 int ocs_sframe_common_send (int *,TYPE_3__*,int ,int ,int,int ,TYPE_5__*,int) ;

int32_t
ocs_sframe_send_bls_acc(ocs_node_t *node, ocs_hw_sequence_t *seq)
{
 fc_header_t *behdr = seq->header->dma.virt;
 uint16_t ox_id = ocs_be16toh(behdr->ox_id);
 uint16_t rx_id = ocs_be16toh(behdr->rx_id);
 fc_ba_acc_payload_t acc = {0};

 acc.ox_id = ocs_htobe16(ox_id);
 acc.rx_id = ocs_htobe16(rx_id);
 acc.low_seq_cnt = UINT16_MAX;
 acc.high_seq_cnt = UINT16_MAX;

 return ocs_sframe_common_send(node, seq,
          FC_RCTL_BLS,
          FC_RCTL_INFO_UNSOL_DATA,
          FC_FCTL_EXCHANGE_RESPONDER |
           FC_FCTL_LAST_SEQUENCE |
           FC_FCTL_END_SEQUENCE,
          FC_TYPE_BASIC_LINK,
          &acc, sizeof(acc));
}
