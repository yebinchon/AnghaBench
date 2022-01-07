
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int io_lock; int io_inuse; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_9__ {TYPE_1__* hw; } ;
typedef TYPE_2__ ocs_hw_io_t ;


 int ocs_hw_io_free_common (TYPE_1__*,TYPE_2__*) ;
 int ocs_hw_io_free_move_correct_list (TYPE_1__*,TYPE_2__*) ;
 int ocs_list_remove (int *,TYPE_2__*) ;
 int ocs_lock (int *) ;
 int ocs_unlock (int *) ;

__attribute__((used)) static void
ocs_hw_io_free_internal(void *arg)
{
 ocs_hw_io_t *io = (ocs_hw_io_t *)arg;
 ocs_hw_t *hw = io->hw;


 ocs_hw_io_free_common(hw, io);

 ocs_lock(&hw->io_lock);

  ocs_list_remove(&hw->io_inuse, io);
  ocs_hw_io_free_move_correct_list(hw, io);
 ocs_unlock(&hw->io_lock);
}
