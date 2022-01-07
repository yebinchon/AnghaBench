
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef void* uint16_t ;
typedef int ocs_t ;
struct TYPE_15__ {int * ocs; } ;
typedef TYPE_2__ ocs_node_t ;
struct TYPE_14__ {int lun; } ;
struct TYPE_16__ {char* display_name; int ref; TYPE_1__ tgt_io; int tmf_cmd; void* abort_rx_id; void* init_task_tag; TYPE_2__* node; } ;
typedef TYPE_3__ ocs_io_t ;
typedef int int32_t ;
struct TYPE_17__ {int rx_id; int ox_id; } ;
typedef TYPE_4__ fc_header_t ;


 int OCS_SCSI_TMF_ABORT_TASK ;
 int node_printf (TYPE_2__*,char*,void*,void*) ;
 void* ocs_be16toh (int ) ;
 int ocs_bls_send_acc_hdr (TYPE_3__*,TYPE_4__*) ;
 TYPE_3__* ocs_io_find_tgt_io (int *,TYPE_2__*,void*,void*) ;
 scalar_t__ ocs_ref_get_unless_zero (int *) ;
 int ocs_ref_put (int *) ;
 int ocs_scsi_recv_tmf (TYPE_3__*,int ,int ,TYPE_3__*,int ) ;

__attribute__((used)) static int32_t
ocs_process_abts(ocs_io_t *io, fc_header_t *hdr)
{
 ocs_node_t *node = io->node;
 ocs_t *ocs = node->ocs;
 uint16_t ox_id = ocs_be16toh(hdr->ox_id);
 uint16_t rx_id = ocs_be16toh(hdr->rx_id);
 ocs_io_t *abortio;

 abortio = ocs_io_find_tgt_io(ocs, node, ox_id, rx_id);


 if (abortio != ((void*)0) && (ocs_ref_get_unless_zero(&abortio->ref) != 0)) {


  node_printf(node, "Abort request: ox_id [%04x] rx_id [%04x]\n",
       ox_id, rx_id);





  io->display_name = "abts";
  io->init_task_tag = ox_id;






  io->abort_rx_id = rx_id;


  io->tmf_cmd = OCS_SCSI_TMF_ABORT_TASK;
  ocs_scsi_recv_tmf(io, abortio->tgt_io.lun, OCS_SCSI_TMF_ABORT_TASK, abortio, 0);





  ocs_ref_put(&abortio->ref);
 } else {




  node_printf(node, "Abort request: ox_id [%04x], IO not found (exists=%d)\n",
       ox_id, (abortio != ((void*)0)));


  ocs_bls_send_acc_hdr(io, hdr);
 }
 return 0;
}
