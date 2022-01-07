
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; int tcb; int terminate; void* arg; int fctn; } ;
typedef TYPE_1__ ocs_thread_t ;
typedef scalar_t__ ocs_thread_start_e ;
typedef int ocs_thread_fctn ;
typedef int ocs_os_handle_t ;
typedef int int32_t ;


 scalar_t__ OCS_THREAD_CREATE ;
 int OCS_THREAD_DEFAULT_STACK_SIZE_PAGES ;
 int RFSTOPPED ;
 int kthread_add (int ,TYPE_1__*,int *,int *,int ,int ,char*,char const*) ;
 int ocs_atomic_set (int *,int ) ;
 int ocs_memset (TYPE_1__*,int ,int) ;
 char* ocs_strdup (char const*) ;
 int ocs_thread_call_fctn ;

int32_t
ocs_thread_create(ocs_os_handle_t os, ocs_thread_t *thread, ocs_thread_fctn fctn, const char *name, void *arg, ocs_thread_start_e start)
{
 int32_t rc = 0;

 ocs_memset(thread, 0, sizeof(*thread));

 thread->fctn = fctn;
 thread->name = ocs_strdup(name);
 if (thread->name == ((void*)0)) {
  thread->name = "unknown";
 }
 thread->arg = arg;

 ocs_atomic_set(&thread->terminate, 0);

 rc = kthread_add(ocs_thread_call_fctn, thread, ((void*)0), &thread->tcb, (start == OCS_THREAD_CREATE) ? RFSTOPPED : 0,
  OCS_THREAD_DEFAULT_STACK_SIZE_PAGES, "%s", name);

 return rc;
}
