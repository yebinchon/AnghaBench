
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_7__ {int * auto_xfer_rdy_buf_pool; int io_lock; int os; } ;
typedef TYPE_2__ ocs_hw_t ;
struct TYPE_6__ {int dma; } ;
struct TYPE_8__ {TYPE_1__ payload; } ;
typedef TYPE_3__ ocs_hw_auto_xfer_rdy_buffer_t ;


 int ocs_dma_free (int ,int *) ;
 int ocs_lock (int *) ;
 int ocs_pool_free (int *) ;
 scalar_t__ ocs_pool_get_count (int *) ;
 TYPE_3__* ocs_pool_get_instance (int *,scalar_t__) ;
 int ocs_unlock (int *) ;

__attribute__((used)) static void
ocs_hw_rqpair_auto_xfer_rdy_buffer_free(ocs_hw_t *hw)
{
 ocs_hw_auto_xfer_rdy_buffer_t *buf;
 uint32_t i;

 if (hw->auto_xfer_rdy_buf_pool != ((void*)0)) {
  ocs_lock(&hw->io_lock);
   for (i = 0; i < ocs_pool_get_count(hw->auto_xfer_rdy_buf_pool); i++) {
    buf = ocs_pool_get_instance(hw->auto_xfer_rdy_buf_pool, i);
    if (buf != ((void*)0)) {
     ocs_dma_free(hw->os, &buf->payload.dma);
    }
   }
  ocs_unlock(&hw->io_lock);

  ocs_pool_free(hw->auto_xfer_rdy_buf_pool);
  hw->auto_xfer_rdy_buf_pool = ((void*)0);
 }
}
