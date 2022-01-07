
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* (* start_routine ) (void*) ;scalar_t__ handle; void* arg; } ;
typedef TYPE_1__ pthread_t ;
typedef scalar_t__ HANDLE ;


 scalar_t__ _beginthreadex (int *,int ,int ,TYPE_1__*,int ,int *) ;
 int errno ;
 int win32_start_routine ;

int pthread_create(pthread_t *thread, const void *unused,
     void *(*start_routine)(void*), void *arg)
{
 thread->arg = arg;
 thread->start_routine = start_routine;
 thread->handle = (HANDLE)
  _beginthreadex(((void*)0), 0, win32_start_routine, thread, 0, ((void*)0));

 if (!thread->handle)
  return errno;
 else
  return 0;
}
