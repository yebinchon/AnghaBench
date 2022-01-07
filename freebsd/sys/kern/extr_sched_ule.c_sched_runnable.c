
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tdq {int tdq_load; } ;
struct TYPE_2__ {int td_flags; } ;


 int TDF_IDLETD ;
 struct tdq* TDQ_SELF () ;
 TYPE_1__* curthread ;

int
sched_runnable(void)
{
 struct tdq *tdq;
 int load;

 load = 1;

 tdq = TDQ_SELF();
 if ((curthread->td_flags & TDF_IDLETD) != 0) {
  if (tdq->tdq_load > 0)
   goto out;
 } else
  if (tdq->tdq_load - 1 > 0)
   goto out;
 load = 0;
out:
 return (load);
}
