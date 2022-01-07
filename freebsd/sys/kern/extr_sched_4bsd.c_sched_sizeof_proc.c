
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;



int
sched_sizeof_proc(void)
{
 return (sizeof(struct proc));
}
