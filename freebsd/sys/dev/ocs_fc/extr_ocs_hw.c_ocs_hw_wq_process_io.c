
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_13__ ;
typedef struct TYPE_28__ TYPE_12__ ;
typedef struct TYPE_27__ TYPE_10__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
struct TYPE_37__ {int qx; scalar_t__ xb; } ;
typedef TYPE_8__ sli4_fc_wcqe_t ;
typedef int prop_buf ;
struct TYPE_34__ {int unsolicited; } ;
struct TYPE_33__ {int (* unsolicited ) (int ,TYPE_13__*) ;int (* bounce ) (int ,TYPE_13__*,void*,void*,void*) ;} ;
struct TYPE_30__ {scalar_t__ bounce; scalar_t__ i_only_aab; } ;
struct TYPE_36__ {int retain_tsend_io_length; } ;
struct TYPE_38__ {TYPE_5__ args; TYPE_4__ callback; TYPE_1__ config; int os; int sli; TYPE_7__ workaround; } ;
typedef TYPE_9__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
struct TYPE_27__ {int quarantine; int type; int status_saved; int axr_lock; TYPE_6__* axr_buf; int rnode; void* saved_ext; void* saved_len; void* saved_status; int (* done ) (TYPE_10__*,int ,void*,void*,void*,void*) ;void* arg; struct TYPE_27__* sec_hio; int reqtag; int indicator; int is_port_owned; void* length; void* xbusy; int wq; void* quarantine_first_phase; TYPE_9__* hw; } ;
typedef TYPE_10__ ocs_hw_io_t ;
typedef int (* ocs_hw_done_t ) (TYPE_10__*,int ,void*,void*,void*,void*) ;
typedef void* int32_t ;
struct TYPE_28__ {int ox_id; int d_id; int s_id; } ;
typedef TYPE_12__ fc_header_t ;
struct TYPE_29__ {TYPE_3__* header; } ;
struct TYPE_35__ {TYPE_13__ seq; TYPE_13__* cmd_seq; int call_axr_data; int call_axr_cmd; } ;
struct TYPE_31__ {TYPE_12__* virt; } ;
struct TYPE_32__ {TYPE_2__ dma; } ;


 void* FALSE ;
 scalar_t__ OCS_HW_RTN_IO_ABORT_IN_PROGRESS ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 void* TRUE ;
 void* fc_be24toh (int ) ;
 void* ocs_be16toh (int ) ;
 int ocs_get_property (char*,char*,int) ;
 scalar_t__ ocs_hw_io_abort (TYPE_9__*,TYPE_10__*,void*,int *,int *) ;
 int ocs_hw_io_free (TYPE_9__*,TYPE_10__*) ;
 int ocs_hw_io_quarantine (TYPE_9__*,int ,TYPE_10__*) ;
 int ocs_hw_io_restore_sgl (TYPE_9__*,TYPE_10__*) ;
 scalar_t__ ocs_hw_iotype_is_originator (int) ;
 int ocs_hw_remove_io_timed_wqe (TYPE_9__*,TYPE_10__*) ;
 int ocs_hw_unsol_process_bounce ;
 scalar_t__ ocs_hw_wcqe_abort_needed (void*,void*,scalar_t__) ;
 int ocs_lock (int *) ;
 int ocs_log_debug (int ,char*,int ,int ) ;
 int ocs_log_test (int ,char*,int,int ,...) ;
 void* ocs_strtoul (char*,int ,int ) ;
 int ocs_udelay (void*) ;
 int ocs_unlock (int *) ;
 int sli_fc_els_did (int *,int*,void**) ;
 void* sli_fc_ext_status (int *,int*) ;
 void* sli_fc_io_length (int *,int*) ;
 void* sli_fc_response_length (int *,int*) ;
 int stub1 (int ,TYPE_13__*,void*,void*,void*) ;
 int stub2 (int ,TYPE_13__*) ;
 int stub3 (int ,TYPE_13__*,void*,void*,void*) ;
 int stub4 (int ,TYPE_13__*) ;

__attribute__((used)) static void
ocs_hw_wq_process_io(void *arg, uint8_t *cqe, int32_t status)
{
 ocs_hw_io_t *io = arg;
 ocs_hw_t *hw = io->hw;
 sli4_fc_wcqe_t *wcqe = (void *)cqe;
 uint32_t len = 0;
 uint32_t ext = 0;
 uint8_t out_of_order_axr_cmd = 0;
 uint8_t out_of_order_axr_data = 0;
 uint8_t lock_taken = 0;
 if (io->quarantine && io->quarantine_first_phase) {
  io->quarantine = (wcqe->qx == 1);
  ocs_hw_io_quarantine(hw, io->wq, io);
 }
 io->quarantine_first_phase = FALSE;


 if (io->sec_hio != ((void*)0) &&
     io->sec_hio->quarantine) {






  io->sec_hio->quarantine = (wcqe->qx == 1);

  ocs_hw_io_quarantine(hw, io->wq, io->sec_hio);
 }

 ocs_hw_remove_io_timed_wqe(hw, io);


 if (io->xbusy && wcqe->xb == 0) {
  io->xbusy = FALSE;
 }


 switch (io->type) {
 case 141:
 case 140:
  break;
 case 139:
  sli_fc_els_did(&hw->sli, cqe, &ext);
  len = sli_fc_response_length(&hw->sli, cqe);
  break;
 case 138:
 case 137:
 case 135:
  break;
 case 136:
  len = sli_fc_response_length(&hw->sli, cqe);
  break;
 case 128:
  len = sli_fc_io_length(&hw->sli, cqe);






  break;
 case 130:
  len = sli_fc_io_length(&hw->sli, cqe);





  if (hw->workaround.retain_tsend_io_length && !len && !status) {
   len = io->length;
  }

  break;
 case 129:
  if(io->is_port_owned) {
   ocs_lock(&io->axr_lock);
   lock_taken = 1;
   if(io->axr_buf->call_axr_cmd) {
    out_of_order_axr_cmd = 1;
   }
   if(io->axr_buf->call_axr_data) {
    out_of_order_axr_data = 1;
   }
  }
  break;
 case 132:
  len = sli_fc_io_length(&hw->sli, cqe);
  break;
 case 131:
  len = sli_fc_io_length(&hw->sli, cqe);
  break;
 case 133:
  break;
 case 134:


  break;
 default:
  ocs_log_test(hw->os, "XXX unhandled io type %#x for XRI 0x%x\n",
        io->type, io->indicator);
  break;
 }
 if (status) {
  ext = sli_fc_ext_status(&hw->sli, cqe);



  if (hw->config.i_only_aab &&
      (ocs_hw_iotype_is_originator(io->type)) &&
      (ocs_hw_wcqe_abort_needed(status, ext, wcqe->xb))) {
   ocs_hw_rtn_e rc;

   ocs_log_debug(hw->os, "aborting xri=%#x tag=%#x\n",
          io->indicator, io->reqtag);





   rc = ocs_hw_io_abort(hw, io, TRUE, ((void*)0), ((void*)0));

   if (rc == OCS_HW_RTN_SUCCESS) {

    io->status_saved = 1;
    io->saved_status = status;
    io->saved_ext = ext;
    io->saved_len = len;
    goto exit_ocs_hw_wq_process_io;
   } else if (rc == OCS_HW_RTN_IO_ABORT_IN_PROGRESS) {





    ocs_log_debug(hw->os, "abort in progress xri=%#x tag=%#x\n",
           io->indicator, io->reqtag);

   } else {

    ocs_log_test(hw->os, "Failed to abort xri=%#x tag=%#x rc=%d\n",
          io->indicator, io->reqtag, rc);
   }
  }




  if ( (! ocs_hw_iotype_is_originator(io->type)) && wcqe->xb) {
   ocs_hw_rtn_e rc;

   ocs_log_debug(hw->os, "aborting xri=%#x tag=%#x\n", io->indicator, io->reqtag);





   rc = ocs_hw_io_abort(hw, io, FALSE, ((void*)0), ((void*)0));
   if (rc == OCS_HW_RTN_SUCCESS) {

    io->status_saved = 1;
    io->saved_status = status;
    io->saved_ext = ext;
    io->saved_len = len;
    goto exit_ocs_hw_wq_process_io;
   } else if (rc == OCS_HW_RTN_IO_ABORT_IN_PROGRESS) {





    ocs_log_debug(hw->os, "abort in progress xri=%#x tag=%#x\n",
           io->indicator, io->reqtag);

   } else {

    ocs_log_test(hw->os, "Failed to abort xri=%#x tag=%#x rc=%d\n",
          io->indicator, io->reqtag, rc);
   }
  }
 }

 if (io->sec_hio != ((void*)0)) {
  ocs_hw_io_free(hw, io->sec_hio);
  io->sec_hio = ((void*)0);
 }

 if (io->done != ((void*)0)) {
  ocs_hw_done_t done = io->done;
  void *arg = io->arg;

  io->done = ((void*)0);

  if (io->status_saved) {

   status = io->saved_status;
   len = io->saved_len;
   ext = io->saved_ext;
   io->status_saved = 0;
  }


  ocs_hw_io_restore_sgl(hw, io);
  done(io, io->rnode, len, status, ext, arg);
 }

 if(out_of_order_axr_cmd) {

  if (hw->config.bounce) {
   fc_header_t *hdr = io->axr_buf->cmd_seq->header->dma.virt;
   uint32_t s_id = fc_be24toh(hdr->s_id);
   uint32_t d_id = fc_be24toh(hdr->d_id);
   uint32_t ox_id = ocs_be16toh(hdr->ox_id);
   if (hw->callback.bounce != ((void*)0)) {
    (*hw->callback.bounce)(ocs_hw_unsol_process_bounce, io->axr_buf->cmd_seq, s_id, d_id, ox_id);
   }
  }else {
   hw->callback.unsolicited(hw->args.unsolicited, io->axr_buf->cmd_seq);
  }

  if(out_of_order_axr_data) {

   if (hw->config.bounce) {
    fc_header_t *hdr = io->axr_buf->seq.header->dma.virt;
    uint32_t s_id = fc_be24toh(hdr->s_id);
    uint32_t d_id = fc_be24toh(hdr->d_id);
    uint32_t ox_id = ocs_be16toh(hdr->ox_id);
    if (hw->callback.bounce != ((void*)0)) {
     (*hw->callback.bounce)(ocs_hw_unsol_process_bounce, &io->axr_buf->seq, s_id, d_id, ox_id);
    }
   }else {
    hw->callback.unsolicited(hw->args.unsolicited, &io->axr_buf->seq);
   }
  }
 }

exit_ocs_hw_wq_process_io:
 if(lock_taken) {
  ocs_unlock(&io->axr_lock);
 }
}
