
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int * td_ar; } ;



void
audit_thread_alloc(struct thread *td)
{

 td->td_ar = ((void*)0);
}
