
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct octeon_device {TYPE_1__** instr_queue; } ;
struct TYPE_2__ {int max_count; int instr_pending; } ;


 int atomic_load_acq_int (int *) ;

__attribute__((used)) static inline int
lio_iq_is_full(struct octeon_device *oct, uint32_t q_no)
{

 return (atomic_load_acq_int(&oct->instr_queue[q_no]->instr_pending) >=
  (oct->instr_queue[q_no]->max_count - 2));
}
