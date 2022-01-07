
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_6__ {int ** hw_wq; int * wq_cpu_array; int * wq_class_array; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_7__ {int wq_steering; size_t wq_class; TYPE_3__* eq; } ;
typedef TYPE_2__ ocs_hw_io_t ;
typedef int hw_wq_t ;
struct TYPE_8__ {int wq_array; } ;
typedef TYPE_3__ hw_eq_t ;


 size_t ARRAY_SIZE (int *) ;



 int likely (int) ;
 size_t ocs_thread_getcpu () ;
 int * ocs_varray_iter_next (int ) ;
 scalar_t__ unlikely (int ) ;

hw_wq_t *
ocs_hw_queue_next_wq(ocs_hw_t *hw, ocs_hw_io_t *io)
{
 hw_eq_t *eq;
 hw_wq_t *wq = ((void*)0);

 switch(io->wq_steering) {
 case 130:
  if (likely(io->wq_class < ARRAY_SIZE(hw->wq_class_array))) {
   wq = ocs_varray_iter_next(hw->wq_class_array[io->wq_class]);
  }
  break;
 case 128:
  eq = io->eq;
  if (likely(eq != ((void*)0))) {
   wq = ocs_varray_iter_next(eq->wq_array);
  }
  break;
 case 129: {
  uint32_t cpuidx = ocs_thread_getcpu();

  if (likely(cpuidx < ARRAY_SIZE(hw->wq_cpu_array))) {
   wq = ocs_varray_iter_next(hw->wq_cpu_array[cpuidx]);
  }
  break;
 }
 }

 if (unlikely(wq == ((void*)0))) {
  wq = hw->hw_wq[0];
 }

 return wq;
}
