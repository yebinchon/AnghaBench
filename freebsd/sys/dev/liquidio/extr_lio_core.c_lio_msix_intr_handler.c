
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int * ifp; } ;
struct TYPE_3__ {int (* msix_interrupt_handler ) (struct lio_ioq_vector*) ;} ;
struct octeon_device {TYPE_2__ props; int tx_budget; int rx_budget; struct lio_instr_queue** instr_queue; TYPE_1__ fn_list; struct lio_droq** droq; } ;
struct lio_ioq_vector {size_t droq_index; struct octeon_device* oct_dev; } ;
struct lio_instr_queue {int enq_lock; int * br; int instr_pending; } ;
struct lio_droq {size_t q_no; int droq_task; int droq_taskqueue; } ;


 int LIO_MSIX_PI_INT ;
 int LIO_MSIX_PO_INT ;
 scalar_t__ atomic_load_acq_int (int *) ;
 int drbr_empty (int *,int *) ;
 int lio_droq_process_packets (struct octeon_device*,struct lio_droq*,int ) ;
 int lio_enable_irq (struct lio_droq*,struct lio_instr_queue*) ;
 int lio_flush_iq (struct octeon_device*,struct lio_instr_queue*,int ) ;
 int lio_mq_start_locked (int *,struct lio_instr_queue*) ;
 scalar_t__ mtx_trylock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct lio_ioq_vector*) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
lio_msix_intr_handler(void *vector)
{
 struct lio_ioq_vector *ioq_vector = (struct lio_ioq_vector *)vector;
 struct octeon_device *oct = ioq_vector->oct_dev;
 struct lio_droq *droq = oct->droq[ioq_vector->droq_index];
 uint64_t ret;

 ret = oct->fn_list.msix_interrupt_handler(ioq_vector);

 if ((ret & LIO_MSIX_PO_INT) || (ret & LIO_MSIX_PI_INT)) {
  struct lio_instr_queue *iq = oct->instr_queue[droq->q_no];
  int reschedule, tx_done = 1;

  reschedule = lio_droq_process_packets(oct, droq, oct->rx_budget);

  if (atomic_load_acq_int(&iq->instr_pending))
   tx_done = lio_flush_iq(oct, iq, oct->tx_budget);

  if ((oct->props.ifp != ((void*)0)) && (iq->br != ((void*)0))) {
   if (mtx_trylock(&iq->enq_lock)) {
    if (!drbr_empty(oct->props.ifp, iq->br))
     lio_mq_start_locked(oct->props.ifp,
           iq);
    mtx_unlock(&iq->enq_lock);
   }
  }

  if (reschedule || !tx_done)
   taskqueue_enqueue(droq->droq_taskqueue, &droq->droq_task);
  else
   lio_enable_irq(droq, iq);
 }
}
