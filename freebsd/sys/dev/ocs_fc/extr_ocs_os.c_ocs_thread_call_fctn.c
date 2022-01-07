
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ name; int arg; int (* fctn ) (int ) ;int retval; } ;
typedef TYPE_1__ ocs_thread_t ;


 int kthread_exit () ;
 int ocs_free (int *,scalar_t__,int ) ;
 int ocs_strlen (scalar_t__) ;
 int stub1 (int ) ;

__attribute__((used)) static void
ocs_thread_call_fctn(void *arg)
{
 ocs_thread_t *thread = arg;
 thread->retval = (*thread->fctn)(thread->arg);
 ocs_free(((void*)0), thread->name, ocs_strlen(thread->name+1));
 kthread_exit();
}
