
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int io_lock; int io_timed_wqe; } ;
typedef TYPE_2__ ocs_hw_t ;
struct TYPE_10__ {int rnode; int (* abort_done ) (TYPE_3__*,int ,int ,int ,int ,void*) ;void* abort_arg; int (* done ) (TYPE_3__*,int ,int ,int ,int ,void*) ;void* arg; TYPE_1__* wq; int wqe_link; } ;
typedef TYPE_3__ ocs_hw_io_t ;
typedef int (* ocs_hw_done_t ) (TYPE_3__*,int ,int ,int ,int ,void*) ;
struct TYPE_8__ {int pending_list; } ;


 int SLI4_FC_WCQE_STATUS_SHUTDOWN ;
 scalar_t__ ocs_list_on_list (int *) ;
 int ocs_list_remove (int *,TYPE_3__*) ;
 int ocs_lock (int *) ;
 int ocs_unlock (int *) ;

__attribute__((used)) static void
ocs_hw_io_cancel_cleanup(ocs_hw_t *hw, ocs_hw_io_t *io)
{
 ocs_hw_done_t done = io->done;
 ocs_hw_done_t abort_done = io->abort_done;


 if (ocs_list_on_list(&io->wqe_link)) {
  ocs_list_remove(&hw->io_timed_wqe, io);
 }


 if ((io->wq != ((void*)0)) && ocs_list_on_list(&io->wq->pending_list)) {
  ocs_list_remove(&io->wq->pending_list, io);
 }

 if (io->done) {
  void *arg = io->arg;

  io->done = ((void*)0);
  ocs_unlock(&hw->io_lock);
  done(io, io->rnode, 0, SLI4_FC_WCQE_STATUS_SHUTDOWN, 0, arg);
  ocs_lock(&hw->io_lock);
 }

 if (io->abort_done != ((void*)0)) {
  void *abort_arg = io->abort_arg;

  io->abort_done = ((void*)0);
  ocs_unlock(&hw->io_lock);
  abort_done(io, io->rnode, 0, SLI4_FC_WCQE_STATUS_SHUTDOWN, 0, abort_arg);
  ocs_lock(&hw->io_lock);
 }
}
