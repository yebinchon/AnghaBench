
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct td_sched {int dummy; } ;



int
sched_sizeof_thread(void)
{
 return (sizeof(struct thread) + sizeof(struct td_sched));
}
