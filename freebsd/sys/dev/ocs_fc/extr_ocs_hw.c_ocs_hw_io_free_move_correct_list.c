
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ use_dif_sec_xri; } ;
struct TYPE_9__ {TYPE_1__ workaround; int io_free; int io_wait_free; } ;
typedef TYPE_2__ ocs_hw_t ;
struct TYPE_10__ {int state; scalar_t__ xbusy; } ;
typedef TYPE_3__ ocs_hw_io_t ;


 int OCS_HW_IO_STATE_FREE ;
 int OCS_HW_IO_STATE_WAIT_FREE ;
 int ocs_hw_check_sec_hio_list (TYPE_2__*) ;
 int ocs_list_add_tail (int *,TYPE_3__*) ;

__attribute__((used)) static void
ocs_hw_io_free_move_correct_list(ocs_hw_t *hw, ocs_hw_io_t *io)
{
 if (io->xbusy) {

  ocs_list_add_tail(&hw->io_wait_free, io);
  io->state = OCS_HW_IO_STATE_WAIT_FREE;
 } else {

  ocs_list_add_tail(&hw->io_free, io);
  io->state = OCS_HW_IO_STATE_FREE;
 }


 if (hw->workaround.use_dif_sec_xri) {
  ocs_hw_check_sec_hio_list(hw);
 }
}
