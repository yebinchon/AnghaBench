
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tdq {int tdq_sysload; } ;


 int SCHED_SLICE_MIN_DIVISOR ;
 int sched_slice ;
 int sched_slice_min ;

__attribute__((used)) static inline int
tdq_slice(struct tdq *tdq)
{
 int load;






 load = tdq->tdq_sysload - 1;
 if (load >= SCHED_SLICE_MIN_DIVISOR)
  return (sched_slice_min);
 if (load <= 1)
  return (sched_slice);
 return (sched_slice / load);
}
