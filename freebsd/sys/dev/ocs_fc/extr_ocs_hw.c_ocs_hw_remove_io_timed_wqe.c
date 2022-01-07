
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ emulate_tgt_wqe_timeout; } ;
struct TYPE_8__ {int io_lock; int io_timed_wqe; TYPE_1__ config; } ;
typedef TYPE_2__ ocs_hw_t ;
struct TYPE_9__ {int wqe_link; } ;
typedef TYPE_3__ ocs_hw_io_t ;


 scalar_t__ ocs_list_on_list (int *) ;
 int ocs_list_remove (int *,TYPE_3__*) ;
 int ocs_lock (int *) ;
 int ocs_unlock (int *) ;

__attribute__((used)) static inline void
ocs_hw_remove_io_timed_wqe(ocs_hw_t *hw, ocs_hw_io_t *io)
{
 if (hw->config.emulate_tgt_wqe_timeout) {




  ocs_lock(&hw->io_lock);
   if (ocs_list_on_list(&io->wqe_link)) {
    ocs_list_remove(&hw->io_timed_wqe, io);
   }
  ocs_unlock(&hw->io_lock);
 }
}
