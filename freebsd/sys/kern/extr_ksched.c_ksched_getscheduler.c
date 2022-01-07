
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct ksched {int dummy; } ;


 int getscheduler (struct ksched*,struct thread*,int*) ;

int
ksched_getscheduler(struct ksched *ksched, struct thread *td, int *policy)
{

 return (getscheduler(ksched, td, policy));
}
