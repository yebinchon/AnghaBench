
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int io_lock; int auto_xfer_rdy_buf_pool; int io_port_dnrx; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_10__ {int * axr_buf; scalar_t__ auto_xfer_rdy_dnrx; int dnrx_link; } ;
typedef TYPE_2__ ocs_hw_io_t ;


 int ocs_hw_io_free (TYPE_1__*,TYPE_2__*) ;
 int ocs_hw_rqpair_auto_xfer_rdy_dnrx_check (TYPE_1__*) ;
 scalar_t__ ocs_list_on_list (int *) ;
 int ocs_list_remove (int *,TYPE_2__*) ;
 int ocs_lock (int *) ;
 int ocs_pool_put (int ,int *) ;
 int ocs_unlock (int *) ;

void
ocs_hw_rqpair_auto_xfer_rdy_move_to_host(ocs_hw_t *hw, ocs_hw_io_t *io)
{
 if (io->axr_buf != ((void*)0)) {
  ocs_lock(&hw->io_lock);

   if (ocs_list_on_list(&io->dnrx_link)) {
    ocs_list_remove(&hw->io_port_dnrx, io);
    io->auto_xfer_rdy_dnrx = 0;


    ocs_hw_io_free(hw, io);
   }

   ocs_pool_put(hw->auto_xfer_rdy_buf_pool, io->axr_buf);
   io->axr_buf = ((void*)0);
  ocs_unlock(&hw->io_lock);

  ocs_hw_rqpair_auto_xfer_rdy_dnrx_check(hw);
 }
 return;
}
