
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_27__ {scalar_t__ fc_id; } ;
struct TYPE_28__ {int fcp_enabled; TYPE_3__ rnode; } ;
typedef TYPE_4__ ocs_node_t ;
struct TYPE_29__ {TYPE_2__* header; } ;
typedef TYPE_5__ ocs_hw_sequence_t ;
typedef int int32_t ;
struct TYPE_30__ {int r_ctl; int info; int type; int f_ctl; int s_id; } ;
typedef TYPE_6__ fc_header_t ;
struct TYPE_25__ {TYPE_6__* virt; } ;
struct TYPE_26__ {TYPE_1__ dma; } ;


 int FC_FCTL_END_SEQUENCE ;
 int FC_FCTL_SEQUENCE_INITIATIVE ;



 int FC_RCTL_INFO_SOL_DATA ;
 int FC_RCTL_INFO_UNSOL_CMD ;


 int fc_be24toh (int ) ;
 int node_printf (TYPE_4__*,char*,int ,int ,int ,int ,int ,int ) ;
 int ocs_assert (int,int) ;
 int ocs_dispatch_fcp_cmd (TYPE_4__*,TYPE_5__*) ;
 int ocs_dispatch_fcp_cmd_auto_xfer_rdy (TYPE_4__*,TYPE_5__*) ;
 int ocs_dispatch_fcp_data (TYPE_4__*,TYPE_5__*) ;
 int ocs_htobe32 (scalar_t__) ;
 int ocs_node_recv_abts_frame (TYPE_4__*,TYPE_5__*) ;
 int ocs_node_recv_bls_no_sit (TYPE_4__*,TYPE_5__*) ;
 int ocs_node_recv_ct_frame (TYPE_4__*,TYPE_5__*) ;
 int ocs_node_recv_els_frame (TYPE_4__*,TYPE_5__*) ;
 int ocs_node_recv_fcp_cmd (TYPE_4__*,TYPE_5__*) ;

__attribute__((used)) static int32_t
ocs_node_dispatch_frame(void *arg, ocs_hw_sequence_t *seq)
{

 fc_header_t *hdr = seq->header->dma.virt;
 uint32_t port_id;
 ocs_node_t *node = (ocs_node_t *)arg;
 int32_t rc = -1;
 int32_t sit_set = 0;

 port_id = fc_be24toh(hdr->s_id);
 ocs_assert(port_id == node->rnode.fc_id, -1);

 if (fc_be24toh(hdr->f_ctl) & FC_FCTL_END_SEQUENCE) {

  if (fc_be24toh(hdr->f_ctl) & FC_FCTL_SEQUENCE_INITIATIVE) {
   sit_set = 1;
  }
  switch (hdr->r_ctl) {
  case 131:
   if (sit_set) {
    rc = ocs_node_recv_els_frame(node, seq);
   }
   break;

  case 132:
   if (sit_set) {
    rc = ocs_node_recv_abts_frame(node, seq);
   }else {
    rc = ocs_node_recv_bls_no_sit(node, seq);
   }
   break;

  case 130:
   switch(hdr->type) {
   case 129:
    if (hdr->info == FC_RCTL_INFO_UNSOL_CMD) {
     if (node->fcp_enabled) {
      if (sit_set) {
       rc = ocs_dispatch_fcp_cmd(node, seq);
      }else {

       rc = ocs_dispatch_fcp_cmd_auto_xfer_rdy(node, seq);
      }
     } else {
      rc = ocs_node_recv_fcp_cmd(node, seq);
     }
    } else if (hdr->info == FC_RCTL_INFO_SOL_DATA) {
     if (sit_set) {
      rc = ocs_dispatch_fcp_data(node, seq);
     }
    }
    break;
   case 128:
    if (sit_set) {
     rc = ocs_node_recv_ct_frame(node, seq);
    }
    break;
   default:
    break;
   }
   break;
  }
 } else {
  node_printf(node, "Dropping frame hdr = %08x %08x %08x %08x %08x %08x\n",
       ocs_htobe32(((uint32_t *)hdr)[0]),
       ocs_htobe32(((uint32_t *)hdr)[1]),
       ocs_htobe32(((uint32_t *)hdr)[2]),
       ocs_htobe32(((uint32_t *)hdr)[3]),
       ocs_htobe32(((uint32_t *)hdr)[4]),
       ocs_htobe32(((uint32_t *)hdr)[5]));
 }
 return rc;
}
