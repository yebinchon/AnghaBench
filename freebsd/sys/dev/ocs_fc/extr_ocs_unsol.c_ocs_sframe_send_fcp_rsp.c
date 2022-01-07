
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ocs_node_t ;
typedef int ocs_hw_sequence_t ;
typedef int int32_t ;


 int FC_FCTL_END_SEQUENCE ;
 int FC_FCTL_EXCHANGE_RESPONDER ;
 int FC_FCTL_LAST_SEQUENCE ;
 int FC_FCTL_SEQUENCE_INITIATIVE ;
 int FC_RCTL_FC4_DATA ;
 int FC_RCTL_INFO_CMD_STATUS ;
 int FC_TYPE_FCP ;
 int ocs_sframe_common_send (int *,int *,int ,int ,int,int ,void*,int ) ;

__attribute__((used)) static int32_t
ocs_sframe_send_fcp_rsp(ocs_node_t *node, ocs_hw_sequence_t *seq, void *rsp, uint32_t rsp_len)
{
 return ocs_sframe_common_send(node, seq,
          FC_RCTL_FC4_DATA,
          FC_RCTL_INFO_CMD_STATUS,
          FC_FCTL_EXCHANGE_RESPONDER |
           FC_FCTL_LAST_SEQUENCE |
           FC_FCTL_END_SEQUENCE |
           FC_FCTL_SEQUENCE_INITIATIVE,
          FC_TYPE_FCP,
          rsp, rsp_len);
}
