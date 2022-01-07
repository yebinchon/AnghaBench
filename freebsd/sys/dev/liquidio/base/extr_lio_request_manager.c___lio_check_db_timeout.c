
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_2__ {int * ifp; } ;
struct octeon_device {TYPE_1__ props; struct lio_instr_queue** instr_queue; } ;
struct lio_instr_queue {size_t last_db_time; int enq_lock; int * br; int db_timeout; int instr_pending; } ;


 scalar_t__ atomic_load_acq_int (int *) ;
 int drbr_empty (int *,int *) ;
 int lio_check_timeout (size_t,size_t) ;
 int lio_enable_irq (int *,struct lio_instr_queue*) ;
 int lio_flush_iq (struct octeon_device*,struct lio_instr_queue*,int ) ;
 int lio_mq_start_locked (int *,struct lio_instr_queue*) ;
 size_t lio_ms_to_ticks (int ) ;
 scalar_t__ mtx_trylock (int *) ;
 int mtx_unlock (int *) ;
 size_t ticks ;

__attribute__((used)) static void
__lio_check_db_timeout(struct octeon_device *oct, uint64_t iq_no)
{
 struct lio_instr_queue *iq;
 uint64_t next_time;

 if (oct == ((void*)0))
  return;

 iq = oct->instr_queue[iq_no];
 if (iq == ((void*)0))
  return;

 if (atomic_load_acq_int(&iq->instr_pending)) {

  next_time = iq->last_db_time + lio_ms_to_ticks(iq->db_timeout);
  if (!lio_check_timeout(ticks, next_time))
   return;

  iq->last_db_time = ticks;


  lio_flush_iq(oct, iq, 0);

  lio_enable_irq(((void*)0), iq);
 }

 if (oct->props.ifp != ((void*)0) && iq->br != ((void*)0)) {
  if (mtx_trylock(&iq->enq_lock)) {
   if (!drbr_empty(oct->props.ifp, iq->br))
    lio_mq_start_locked(oct->props.ifp, iq);

   mtx_unlock(&iq->enq_lock);
  }
 }
}
