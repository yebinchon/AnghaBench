
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int SWT_RELINQUISH ;
 int SW_VOL ;
 int mi_switch (int,int *) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

void
sched_relinquish(struct thread *td)
{
 thread_lock(td);
 mi_switch(SW_VOL | SWT_RELINQUISH, ((void*)0));
 thread_unlock(td);
}
