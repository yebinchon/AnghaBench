
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int io_lock; int io_port_dnrx; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_8__ {int ref; scalar_t__ auto_xfer_rdy_dnrx; TYPE_1__* hw; } ;
typedef TYPE_2__ ocs_hw_io_t ;


 int ocs_hw_io_free_common (TYPE_1__*,TYPE_2__*) ;
 int ocs_list_add_tail (int *,TYPE_2__*) ;
 int ocs_lock (int *) ;
 int ocs_ref_init (int *,void (*) (void*),TYPE_2__*) ;
 int ocs_unlock (int *) ;

__attribute__((used)) static void
ocs_hw_io_free_port_owned(void *arg)
{
 ocs_hw_io_t *io = (ocs_hw_io_t *)arg;
 ocs_hw_t *hw = io->hw;





 if (io->auto_xfer_rdy_dnrx) {
  ocs_lock(&hw->io_lock);

   ocs_ref_init(&io->ref, ocs_hw_io_free_port_owned, io);
   ocs_list_add_tail(&hw->io_port_dnrx, io);
  ocs_unlock(&hw->io_lock);
 }


 ocs_hw_io_free_common(hw, io);
}
