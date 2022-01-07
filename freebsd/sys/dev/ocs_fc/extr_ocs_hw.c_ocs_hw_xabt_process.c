
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_18__ {int io_lock; int io_wait_free; int os; int q_hist; } ;
typedef TYPE_2__ ocs_hw_t ;
struct TYPE_19__ {scalar_t__ state; scalar_t__ is_port_owned; int rnode; scalar_t__ status_saved; int (* done ) (TYPE_3__*,int ,int ,int ,int ,void*) ;int saved_ext; int saved_len; int saved_status; void* arg; int ref; scalar_t__ xbusy; } ;
typedef TYPE_3__ ocs_hw_io_t ;
typedef int (* ocs_hw_done_t ) (TYPE_3__*,int ,int ,int ,int ,void*) ;
typedef int int32_t ;
struct TYPE_20__ {TYPE_1__* queue; } ;
typedef TYPE_5__ hw_cq_t ;
struct TYPE_17__ {int index; int length; int id; } ;


 scalar_t__ FALSE ;
 scalar_t__ OCS_HW_IO_STATE_FREE ;
 scalar_t__ OCS_HW_IO_STATE_INUSE ;
 scalar_t__ OCS_HW_IO_STATE_WAIT_FREE ;
 int SLI_QENTRY_XABT ;
 int ocs_hw_io_free (TYPE_2__*,TYPE_3__*) ;
 int ocs_hw_io_free_move_correct_list (TYPE_2__*,TYPE_3__*) ;
 TYPE_3__* ocs_hw_io_lookup (TYPE_2__*,int ) ;
 int ocs_hw_reque_xri (TYPE_2__*,TYPE_3__*) ;
 int ocs_list_remove (int *,TYPE_3__*) ;
 int ocs_lock (int *) ;
 int ocs_log_debug (int ,char*,int ) ;
 int ocs_log_err (int ,char*,int ) ;
 int ocs_queue_history_cqe (int *,int ,void*,int ,int ,int) ;
 int ocs_ref_get (int *) ;
 int ocs_unlock (int *) ;

void
ocs_hw_xabt_process(ocs_hw_t *hw, hw_cq_t *cq, uint8_t *cqe, uint16_t rid)
{

 ocs_hw_io_t *io = ((void*)0);

 io = ocs_hw_io_lookup(hw, rid);

 ocs_queue_history_cqe(&hw->q_hist, SLI_QENTRY_XABT, (void *)cqe, 0, cq->queue->id,
         ((cq->queue->index - 1) & (cq->queue->length - 1)));
 if (io == ((void*)0)) {

  ocs_log_err(hw->os, "Error: xabt io lookup failed rid=%#x\n", rid);
  return;
 }

 if (!io->xbusy) {
  ocs_log_debug(hw->os, "xabt io not busy rid=%#x\n", rid);
 } else {

  io->xbusy = FALSE;
 }

       if (io->is_port_owned) {
               ocs_lock(&hw->io_lock);

               ocs_ref_get(&io->ref);
               ocs_unlock(&hw->io_lock);
       }




 if (io->done != ((void*)0)) {
  ocs_hw_done_t done = io->done;
  void *arg = io->arg;


  int32_t status = io->saved_status;
  uint32_t len = io->saved_len;
  uint32_t ext = io->saved_ext;

  io->done = ((void*)0);
  io->status_saved = 0;

  done(io, io->rnode, len, status, ext, arg);
 }


 if (io->is_port_owned) {
  ocs_lock(&hw->io_lock);
  ocs_hw_reque_xri(hw, io);
  ocs_unlock(&hw->io_lock);

  ocs_hw_io_free(hw, io);
  return;
 }

 ocs_lock(&hw->io_lock);
  if ((io->state == OCS_HW_IO_STATE_INUSE) || (io->state == OCS_HW_IO_STATE_WAIT_FREE)) {





   if (io->state == OCS_HW_IO_STATE_WAIT_FREE) {
    io->state = OCS_HW_IO_STATE_FREE;
    ocs_list_remove(&hw->io_wait_free, io);
    ocs_hw_io_free_move_correct_list(hw, io);
   }
  }
 ocs_unlock(&hw->io_lock);
}
