
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ emulate_tgt_wqe_timeout; } ;
struct TYPE_6__ {int os; scalar_t__ in_active_wqe_timer; int wqe_timer; int active_wqe_timer_shutdown; TYPE_1__ config; } ;
typedef TYPE_2__ ocs_hw_t ;


 int TRUE ;
 int ocs_del_timer (int *) ;
 int ocs_hw_flush (TYPE_2__*) ;
 int ocs_log_test (int ,char*) ;

__attribute__((used)) static void
shutdown_target_wqe_timer(ocs_hw_t *hw)
{
 uint32_t iters = 100;

 if (hw->config.emulate_tgt_wqe_timeout) {

  hw->active_wqe_timer_shutdown = TRUE;


  ocs_del_timer(&hw->wqe_timer);


  while (hw->in_active_wqe_timer && iters) {




   ocs_hw_flush(hw);
   iters--;
  }

  if (iters == 0) {
   ocs_log_test(hw->os, "Failed to shutdown active wqe timer\n");
  }
 }
}
