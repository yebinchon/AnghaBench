
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksched {int dummy; } ;


 int EINVAL ;
 int P1B_PRIO_MIN ;




int
ksched_get_priority_min(struct ksched *ksched, int policy, int *prio)
{
 int e;

 e = 0;
 switch (policy) {
 case 130:
 case 128:
  *prio = P1B_PRIO_MIN;
  break;
 case 129:
  *prio = 0;
  break;
 default:
  e = EINVAL;
  break;
 }
 return (e);
}
