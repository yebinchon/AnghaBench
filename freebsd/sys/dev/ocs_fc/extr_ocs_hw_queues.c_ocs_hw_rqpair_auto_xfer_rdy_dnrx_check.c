
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int io_lock; int io_port_dnrx; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int ocs_hw_io_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ ocs_hw_reque_xri (TYPE_1__*,int *) ;
 int ocs_list_empty (int *) ;
 int * ocs_list_remove_head (int *) ;
 int ocs_lock (int *) ;
 int ocs_unlock (int *) ;

__attribute__((used)) static void
ocs_hw_rqpair_auto_xfer_rdy_dnrx_check(ocs_hw_t *hw)
{
 ocs_hw_io_t *io;
 int32_t rc;

 ocs_lock(&hw->io_lock);

 while (!ocs_list_empty(&hw->io_port_dnrx)) {
  io = ocs_list_remove_head(&hw->io_port_dnrx);
  rc = ocs_hw_reque_xri(hw, io);
  if(rc) {
   break;
  }
 }

 ocs_unlock(&hw->io_lock);
}
