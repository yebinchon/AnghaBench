
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int cleanup_power_extras (struct thread*) ;

void
cpu_thread_exit(struct thread *td)
{
 cleanup_power_extras(td);
}
