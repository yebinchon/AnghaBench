
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_17__ ;
typedef struct TYPE_18__ TYPE_11__ ;


typedef void* uint32_t ;
typedef int sli4_abort_type_e ;
struct TYPE_20__ {int wqe_size; } ;
struct TYPE_24__ {TYPE_1__ config; } ;
struct TYPE_21__ {int io_abort_lock; int * os; TYPE_5__ sli; int state; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
struct TYPE_19__ {int abort_wqe_submit_needed; int wqebuf; int abort_reqtag; void* id; void* send_abts; int link; } ;
struct TYPE_22__ {int abort_in_progress; int ref; TYPE_17__ wqe; TYPE_11__* wq; int abort_reqtag; void* indicator; void* abort_arg; void* abort_done; int reqtag; } ;
typedef TYPE_3__ ocs_hw_io_t ;
struct TYPE_23__ {int instance_index; } ;
typedef TYPE_4__ hw_wq_callback_t ;
struct TYPE_18__ {int queue; } ;


 scalar_t__ OCS_HW_RTN_ERROR ;
 scalar_t__ OCS_HW_RTN_IO_ABORT_IN_PROGRESS ;
 scalar_t__ OCS_HW_RTN_IO_NOT_ACTIVE ;
 scalar_t__ OCS_HW_RTN_NO_RESOURCES ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_HW_STATE_ACTIVE ;
 int SLI4_CQ_DEFAULT ;
 int SLI_ABORT_MAX ;
 int SLI_ABORT_XRI ;
 int UINT32_MAX ;
 scalar_t__ hw_wq_write (TYPE_11__*,TYPE_17__*) ;
 int ocs_hw_assert (int ) ;
 TYPE_11__* ocs_hw_queue_next_wq (TYPE_2__*,TYPE_3__*) ;
 TYPE_4__* ocs_hw_reqtag_alloc (TYPE_2__*,int ,TYPE_3__*) ;
 int ocs_hw_reqtag_free (TYPE_2__*,TYPE_4__*) ;
 int ocs_hw_wq_process_abort ;
 scalar_t__ ocs_list_on_list (int *) ;
 int ocs_lock (int *) ;
 int ocs_log_debug (int *,char*,void*,int ) ;
 int ocs_log_err (int *,char*,...) ;
 int ocs_log_test (int *,char*,void*,...) ;
 scalar_t__ ocs_ref_get_unless_zero (int *) ;
 int ocs_ref_put (int *) ;
 int ocs_unlock (int *) ;
 scalar_t__ sli_abort_wqe (TYPE_5__*,int ,int ,int ,void*,void*,void*,int ,int ) ;
 int sli_queue_lock (int ) ;
 int sli_queue_unlock (int ) ;

ocs_hw_rtn_e
ocs_hw_io_abort(ocs_hw_t *hw, ocs_hw_io_t *io_to_abort, uint32_t send_abts, void *cb, void *arg)
{
 sli4_abort_type_e atype = SLI_ABORT_MAX;
 uint32_t id = 0, mask = 0;
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;
 hw_wq_callback_t *wqcb;

 if (!hw || !io_to_abort) {
  ocs_log_err(hw ? hw->os : ((void*)0),
       "bad parameter hw=%p io=%p\n",
       hw, io_to_abort);
  return OCS_HW_RTN_ERROR;
 }

 if (hw->state != OCS_HW_STATE_ACTIVE) {
  ocs_log_err(hw->os, "cannot send IO abort, HW state=%d\n",
       hw->state);
  return OCS_HW_RTN_ERROR;
 }


 if (ocs_ref_get_unless_zero(&io_to_abort->ref) == 0) {

  ocs_log_test(hw ? hw->os : ((void*)0),
    "io not active xri=0x%x tag=0x%x\n",
    io_to_abort->indicator, io_to_abort->reqtag);
  return OCS_HW_RTN_IO_NOT_ACTIVE;
 }



 if (io_to_abort->wq == ((void*)0)) {
  ocs_log_test(hw->os, "io_to_abort xri=0x%x not active on WQ\n",
    io_to_abort->indicator);
  ocs_ref_put(&io_to_abort->ref);
  return OCS_HW_RTN_IO_NOT_ACTIVE;
 }


 ocs_lock(&hw->io_abort_lock);
  if (io_to_abort->abort_in_progress) {
   ocs_unlock(&hw->io_abort_lock);
   ocs_ref_put(&io_to_abort->ref);
   ocs_log_debug(hw ? hw->os : ((void*)0),
    "io already being aborted xri=0x%x tag=0x%x\n",
    io_to_abort->indicator, io_to_abort->reqtag);
   return OCS_HW_RTN_IO_ABORT_IN_PROGRESS;
  }





  io_to_abort->abort_in_progress = 1;
 ocs_unlock(&hw->io_abort_lock);
 io_to_abort->abort_done = cb;
 io_to_abort->abort_arg = arg;

 atype = SLI_ABORT_XRI;
 id = io_to_abort->indicator;


 wqcb = ocs_hw_reqtag_alloc(hw, ocs_hw_wq_process_abort, io_to_abort);
 if (wqcb == ((void*)0)) {
  ocs_log_err(hw->os, "can't allocate request tag\n");
  return OCS_HW_RTN_NO_RESOURCES;
 }
 io_to_abort->abort_reqtag = wqcb->instance_index;





 if (io_to_abort->wq != ((void*)0)) {
  sli_queue_lock(io_to_abort->wq->queue);
   if (ocs_list_on_list(&io_to_abort->wqe.link)) {
    io_to_abort->wqe.abort_wqe_submit_needed = 1;
    io_to_abort->wqe.send_abts = send_abts;
    io_to_abort->wqe.id = id;
    io_to_abort->wqe.abort_reqtag = io_to_abort->abort_reqtag;
    sli_queue_unlock(io_to_abort->wq->queue);
    return 0;
  }
  sli_queue_unlock(io_to_abort->wq->queue);
 }

 if (sli_abort_wqe(&hw->sli, io_to_abort->wqe.wqebuf, hw->sli.config.wqe_size, atype, send_abts, id, mask,
     io_to_abort->abort_reqtag, SLI4_CQ_DEFAULT)) {
  ocs_log_err(hw->os, "ABORT WQE error\n");
  io_to_abort->abort_reqtag = UINT32_MAX;
  ocs_hw_reqtag_free(hw, wqcb);
  rc = OCS_HW_RTN_ERROR;
 }

 if (OCS_HW_RTN_SUCCESS == rc) {
  if (io_to_abort->wq == ((void*)0)) {
   io_to_abort->wq = ocs_hw_queue_next_wq(hw, io_to_abort);
   ocs_hw_assert(io_to_abort->wq != ((void*)0));
  }




  rc = hw_wq_write(io_to_abort->wq, &io_to_abort->wqe);
  if (rc > 0) {

   rc = 0;

  }
 }

 if (OCS_HW_RTN_SUCCESS != rc) {
  ocs_lock(&hw->io_abort_lock);
   io_to_abort->abort_in_progress = 0;
  ocs_unlock(&hw->io_abort_lock);
  ocs_ref_put(&io_to_abort->ref);
 }
 return rc;
}
