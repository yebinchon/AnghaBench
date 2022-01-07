
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_11__ {int io_lock; int io_port_owned; int os; int io_free; scalar_t__ auto_xfer_rdy_enabled; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
struct TYPE_12__ {int is_port_owned; int indicator; int axr_lock; } ;
typedef TYPE_2__ ocs_hw_io_t ;


 scalar_t__ OCS_HW_RTN_SUCCESS ;
 scalar_t__ ocs_hw_post_xri (TYPE_1__*,int ,int) ;
 int ocs_hw_reclaim_xri (TYPE_1__*,int ,scalar_t__) ;
 scalar_t__ ocs_hw_rqpair_auto_xfer_rdy_move_to_port (TYPE_1__*,TYPE_2__*) ;
 int ocs_list_add_head (int *,TYPE_2__*) ;
 int ocs_list_add_tail (int *,TYPE_2__*) ;
 TYPE_2__* ocs_list_remove_head (int *) ;
 int ocs_lock (int *) ;
 int ocs_lock_init (int ,int *,char*,int ) ;
 int ocs_unlock (int *) ;

uint32_t
ocs_hw_xri_move_to_port_owned(ocs_hw_t *hw, uint32_t num_xri)
{
 ocs_hw_io_t *io;
 uint32_t i;
 uint32_t num_posted = 0;






 ocs_lock(&hw->io_lock);

 for (i = 0; i < num_xri; i++) {

  if (((void*)0) != (io = ocs_list_remove_head(&hw->io_free))) {
   ocs_hw_rtn_e rc;







   if (hw->auto_xfer_rdy_enabled) {

    ocs_unlock(&hw->io_lock);
    rc = ocs_hw_rqpair_auto_xfer_rdy_move_to_port(hw, io);
    ocs_lock(&hw->io_lock);
    if (rc != OCS_HW_RTN_SUCCESS) {
     ocs_list_add_head(&hw->io_free, io);
     break;
    }
   }
   ocs_lock_init(hw->os, &io->axr_lock, "HW_axr_lock[%d]", io->indicator);
   io->is_port_owned = 1;
   ocs_list_add_tail(&hw->io_port_owned, io);


   if (ocs_hw_post_xri(hw, io->indicator, 1) != OCS_HW_RTN_SUCCESS ) {
    ocs_hw_reclaim_xri(hw, io->indicator, i);
    break;
   }
   num_posted++;
  } else {

   break;
  }
 }
 ocs_unlock(&hw->io_lock);

 return num_posted;
}
