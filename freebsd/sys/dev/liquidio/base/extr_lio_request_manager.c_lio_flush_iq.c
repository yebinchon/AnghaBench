
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ (* update_iq_read_idx ) (struct lio_instr_queue*) ;} ;
struct octeon_device {TYPE_1__ fn_list; } ;
struct TYPE_4__ {int instr_processed; } ;
struct lio_instr_queue {scalar_t__ octeon_read_index; scalar_t__ flush_index; int iq_flush_running_lock; int lock; int last_db_time; TYPE_2__ stats; int instr_pending; } ;


 int atomic_subtract_int (int *,scalar_t__) ;
 scalar_t__ lio_process_iq_request_list (struct octeon_device*,struct lio_instr_queue*,scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_trylock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ stub1 (struct lio_instr_queue*) ;
 int ticks ;

int
lio_flush_iq(struct octeon_device *oct, struct lio_instr_queue *iq,
      uint32_t budget)
{
 uint32_t inst_processed = 0;
 uint32_t tot_inst_processed = 0;
 int tx_done = 1;

 if (!mtx_trylock(&iq->iq_flush_running_lock))
  return (tx_done);

 mtx_lock(&iq->lock);

 iq->octeon_read_index = oct->fn_list.update_iq_read_idx(iq);

 do {

  if (iq->flush_index == iq->octeon_read_index)
   break;

  if (budget)
   inst_processed =
    lio_process_iq_request_list(oct, iq,
           budget -
           tot_inst_processed);
  else
   inst_processed =
    lio_process_iq_request_list(oct, iq, 0);

  if (inst_processed) {
   atomic_subtract_int(&iq->instr_pending, inst_processed);
   iq->stats.instr_processed += inst_processed;
  }
  tot_inst_processed += inst_processed;
  inst_processed = 0;

 } while (tot_inst_processed < budget);

 if (budget && (tot_inst_processed >= budget))
  tx_done = 0;

 iq->last_db_time = ticks;

 mtx_unlock(&iq->lock);

 mtx_unlock(&iq->iq_flush_running_lock);

 return (tx_done);
}
