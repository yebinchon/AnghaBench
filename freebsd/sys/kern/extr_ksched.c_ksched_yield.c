
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksched {int dummy; } ;


 int curthread ;
 int sched_relinquish (int ) ;

int
ksched_yield(struct ksched *ksched)
{

 sched_relinquish(curthread);
 return (0);
}
