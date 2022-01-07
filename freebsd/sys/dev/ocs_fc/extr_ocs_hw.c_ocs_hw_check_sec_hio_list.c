
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_19__ ;


typedef int uint16_t ;
struct TYPE_23__ {int wqe_size; } ;
struct TYPE_28__ {TYPE_1__ config; } ;
struct TYPE_26__ {int os; TYPE_6__ sli; int io_inuse; int sec_hio_wait_list; } ;
typedef TYPE_4__ ocs_hw_t ;
struct TYPE_22__ {int wqebuf; } ;
struct TYPE_24__ {int app_id; int cs_ctl; int blk_size; int dif_oper; int ox_id; int offset; int timeout; int flags; } ;
struct TYPE_25__ {TYPE_2__ fcp_tgt; } ;
struct TYPE_27__ {void* xbusy; TYPE_19__ wqe; int * wq; TYPE_3__ sec_iparam; TYPE_7__* rnode; int reqtag; int indicator; int sec_len; int first_data_sge; int def_sgl; struct TYPE_27__* sec_hio; int tgt_wqe_timeout; void* quarantine; int state; } ;
typedef TYPE_5__ ocs_hw_io_t ;
struct TYPE_29__ {int indicator; } ;


 void* FALSE ;
 int OCS_HW_IO_STATE_INUSE ;
 int SLI4_CQ_DEFAULT ;
 int SLI4_IO_CONTINUATION ;
 void* TRUE ;
 TYPE_5__* _ocs_hw_io_alloc (TYPE_4__*) ;
 int hw_wq_write (int *,TYPE_19__*) ;
 int ocs_hw_add_io_timed_wqe (TYPE_4__*,TYPE_5__*) ;
 int ocs_hw_assert (int ) ;
 int * ocs_hw_queue_next_wq (TYPE_4__*,TYPE_5__*) ;
 int ocs_hw_remove_io_timed_wqe (TYPE_4__*,TYPE_5__*) ;
 int ocs_list_add_tail (int *,TYPE_5__*) ;
 int ocs_list_empty (int *) ;
 TYPE_5__* ocs_list_remove_head (int *) ;
 int ocs_log_err (int ,char*,int) ;
 int ocs_log_test (int ,char*) ;
 scalar_t__ sli_fcp_cont_treceive64_wqe (TYPE_6__*,int ,int ,int *,int ,int ,int ,int ,int ,int ,int ,int ,int ,TYPE_7__*,int ,int ,int ,int ,int ) ;
 scalar_t__ sli_fcp_treceive64_wqe (TYPE_6__*,int ,int ,int *,int ,int ,int ,int ,int ,int ,int ,int ,TYPE_7__*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
ocs_hw_check_sec_hio_list(ocs_hw_t *hw)
{
 ocs_hw_io_t *io;
 ocs_hw_io_t *sec_io;
 int rc = 0;

 while (!ocs_list_empty(&hw->sec_hio_wait_list)) {
  uint16_t flags;

  sec_io = _ocs_hw_io_alloc(hw);
  if (sec_io == ((void*)0)) {
   break;
  }

  io = ocs_list_remove_head(&hw->sec_hio_wait_list);
  ocs_list_add_tail(&hw->io_inuse, io);
  io->state = OCS_HW_IO_STATE_INUSE;
  io->sec_hio = sec_io;


  if (io->xbusy) {
   sec_io->quarantine = TRUE;
  }

  flags = io->sec_iparam.fcp_tgt.flags;
  if (io->xbusy) {
   flags |= SLI4_IO_CONTINUATION;
  } else {
   flags &= ~SLI4_IO_CONTINUATION;
  }

  io->tgt_wqe_timeout = io->sec_iparam.fcp_tgt.timeout;


  if (io->xbusy) {
   if (sli_fcp_cont_treceive64_wqe(&hw->sli, io->wqe.wqebuf, hw->sli.config.wqe_size, &io->def_sgl,
    io->first_data_sge,
    io->sec_iparam.fcp_tgt.offset, io->sec_len, io->indicator, io->sec_hio->indicator,
    io->reqtag, SLI4_CQ_DEFAULT,
    io->sec_iparam.fcp_tgt.ox_id, io->rnode->indicator, io->rnode,
    flags,
    io->sec_iparam.fcp_tgt.dif_oper, io->sec_iparam.fcp_tgt.blk_size, io->sec_iparam.fcp_tgt.cs_ctl, io->sec_iparam.fcp_tgt.app_id)) {
     ocs_log_test(hw->os, "TRECEIVE WQE error\n");
     break;
   }
  } else {
   if (sli_fcp_treceive64_wqe(&hw->sli, io->wqe.wqebuf, hw->sli.config.wqe_size, &io->def_sgl,
    io->first_data_sge,
    io->sec_iparam.fcp_tgt.offset, io->sec_len, io->indicator,
    io->reqtag, SLI4_CQ_DEFAULT,
    io->sec_iparam.fcp_tgt.ox_id, io->rnode->indicator, io->rnode,
    flags,
    io->sec_iparam.fcp_tgt.dif_oper, io->sec_iparam.fcp_tgt.blk_size,
    io->sec_iparam.fcp_tgt.cs_ctl, io->sec_iparam.fcp_tgt.app_id)) {
     ocs_log_test(hw->os, "TRECEIVE WQE error\n");
     break;
   }
  }

  if (io->wq == ((void*)0)) {
   io->wq = ocs_hw_queue_next_wq(hw, io);
   ocs_hw_assert(io->wq != ((void*)0));
  }
  io->xbusy = TRUE;





  ocs_hw_add_io_timed_wqe(hw, io);
  rc = hw_wq_write(io->wq, &io->wqe);
  if (rc >= 0) {

   rc = 0;
  } else {

   ocs_log_err(hw->os, "sli_queue_write failed: %d\n", rc);
   io->xbusy = FALSE;
   ocs_hw_remove_io_timed_wqe(hw, io);
  }
 }
}
