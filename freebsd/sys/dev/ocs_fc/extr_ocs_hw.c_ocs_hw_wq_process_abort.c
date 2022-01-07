
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_8__ {int io_abort_lock; int sli; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_9__ {scalar_t__ saved_len; scalar_t__ saved_ext; scalar_t__ abort_reqtag; scalar_t__ abort_in_progress; int rnode; int (* abort_done ) (TYPE_2__*,int ,scalar_t__,int ,scalar_t__,void*) ;void* abort_arg; scalar_t__ status_saved; int saved_status; int (* done ) (TYPE_2__*,int ,scalar_t__,int ,scalar_t__,void*) ;void* arg; TYPE_1__* hw; } ;
typedef TYPE_2__ ocs_hw_io_t ;
typedef int (* ocs_hw_done_t ) (TYPE_2__*,int ,scalar_t__,int ,scalar_t__,void*) ;
typedef int int32_t ;
typedef int hw_wq_callback_t ;


 scalar_t__ SLI4_FC_LOCAL_REJECT_NO_XRI ;
 int SLI4_FC_WCQE_STATUS_LOCAL_REJECT ;
 scalar_t__ UINT32_MAX ;
 int ocs_hw_assert (int) ;
 int ocs_hw_io_free (TYPE_1__*,TYPE_2__*) ;
 int ocs_hw_reqtag_free (TYPE_1__*,int *) ;
 int * ocs_hw_reqtag_get_instance (TYPE_1__*,scalar_t__) ;
 int ocs_lock (int *) ;
 int ocs_unlock (int *) ;
 scalar_t__ sli_fc_ext_status (int *,int *) ;

__attribute__((used)) static void
ocs_hw_wq_process_abort(void *arg, uint8_t *cqe, int32_t status)
{
 ocs_hw_io_t *io = arg;
 ocs_hw_t *hw = io->hw;
 uint32_t ext = 0;
 uint32_t len = 0;
 hw_wq_callback_t *wqcb;






 ext = sli_fc_ext_status(&hw->sli, cqe);
 if (status == SLI4_FC_WCQE_STATUS_LOCAL_REJECT &&
     ext == SLI4_FC_LOCAL_REJECT_NO_XRI &&
  io->done != ((void*)0)) {
  ocs_hw_done_t done = io->done;
  void *arg = io->arg;

  io->done = ((void*)0);







  status = io->saved_status;
  len = io->saved_len;
  ext = io->saved_ext;
  io->status_saved = 0;
  done(io, io->rnode, len, status, ext, arg);
 }

 if (io->abort_done != ((void*)0)) {
  ocs_hw_done_t done = io->abort_done;
  void *arg = io->abort_arg;

  io->abort_done = ((void*)0);

  done(io, io->rnode, len, status, ext, arg);
 }
 ocs_lock(&hw->io_abort_lock);

  io->abort_in_progress = 0;
 ocs_unlock(&hw->io_abort_lock);


 ocs_hw_assert(io->abort_reqtag != UINT32_MAX);
 wqcb = ocs_hw_reqtag_get_instance(hw, io->abort_reqtag);
 ocs_hw_reqtag_free(hw, wqcb);





 (void)ocs_hw_io_free(hw, io);
}
