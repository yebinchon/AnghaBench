
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRI_MAX_INTERACT ;
 int PRI_MIN_IDLE ;
 int preempt_thresh ;

__attribute__((used)) static inline int
sched_shouldpreempt(int pri, int cpri, int remote)
{




 if (pri >= cpri)
  return (0);



 if (cpri >= PRI_MIN_IDLE)
  return (1);



 if (preempt_thresh == 0)
  return (0);



 if (pri <= preempt_thresh)
  return (1);




 if (remote && pri <= PRI_MAX_INTERACT && cpri > PRI_MAX_INTERACT)
  return (1);
 return (0);
}
