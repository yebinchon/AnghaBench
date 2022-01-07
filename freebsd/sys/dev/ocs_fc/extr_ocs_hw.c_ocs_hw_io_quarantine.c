
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_8__ {size_t quarantine_index; TYPE_3__** quarantine_ios; } ;
typedef TYPE_1__ ocs_quarantine_info_t ;
struct TYPE_9__ {int * os; } ;
typedef TYPE_2__ ocs_hw_t ;
struct TYPE_10__ {int ref; int reqtag; int indicator; int quarantine; } ;
typedef TYPE_3__ ocs_hw_io_t ;
struct TYPE_11__ {int queue; TYPE_1__ quarantine_info; } ;
typedef TYPE_4__ hw_wq_t ;


 size_t OCS_HW_QUARANTINE_QUEUE_DEPTH ;
 int ocs_log_debug (int *,char*,int ,int ) ;
 scalar_t__ ocs_ref_get_unless_zero (int *) ;
 int ocs_ref_put (int *) ;
 int sli_queue_lock (int ) ;
 int sli_queue_unlock (int ) ;

__attribute__((used)) static void
ocs_hw_io_quarantine(ocs_hw_t *hw, hw_wq_t *wq, ocs_hw_io_t *io)
{
 ocs_quarantine_info_t *q_info = &wq->quarantine_info;
 uint32_t index;
 ocs_hw_io_t *free_io = ((void*)0);


 if (!io->quarantine) {
  return;
 }


 if (ocs_ref_get_unless_zero(&io->ref) == 0) {

  ocs_log_debug(hw ? hw->os : ((void*)0),
         "io not active xri=0x%x tag=0x%x\n",
         io->indicator, io->reqtag);
  return;
 }

 sli_queue_lock(wq->queue);
  index = q_info->quarantine_index;
  free_io = q_info->quarantine_ios[index];
  q_info->quarantine_ios[index] = io;
  q_info->quarantine_index = (index + 1) % OCS_HW_QUARANTINE_QUEUE_DEPTH;
 sli_queue_unlock(wq->queue);

 if (free_io != ((void*)0)) {
  ocs_ref_put(&free_io->ref);
 }
}
