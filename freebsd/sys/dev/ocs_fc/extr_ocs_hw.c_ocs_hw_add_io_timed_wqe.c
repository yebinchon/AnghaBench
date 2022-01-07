
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
struct TYPE_9__ {int submit_ticks; scalar_t__ tgt_wqe_timeout; } ;
typedef TYPE_3__ ocs_hw_io_t ;


 int ocs_get_os_ticks () ;
 int ocs_list_add_tail (int *,TYPE_3__*) ;
 int ocs_lock (int *) ;
 int ocs_unlock (int *) ;

__attribute__((used)) static inline void
ocs_hw_add_io_timed_wqe(ocs_hw_t *hw, ocs_hw_io_t *io)
{
 if (hw->config.emulate_tgt_wqe_timeout && io->tgt_wqe_timeout) {




  ocs_lock(&hw->io_lock);
   ocs_list_add_tail(&hw->io_timed_wqe, io);
   io->submit_ticks = ocs_get_os_ticks();
  ocs_unlock(&hw->io_lock);
 }
}
