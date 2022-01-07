
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int umtx_thread_cleanup (struct thread*) ;

void
umtx_thread_exit(struct thread *td)
{

 umtx_thread_cleanup(td);
}
