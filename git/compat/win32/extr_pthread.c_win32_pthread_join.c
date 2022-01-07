
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* arg; int handle; } ;
typedef TYPE_1__ pthread_t ;
typedef int DWORD ;


 int EINVAL ;
 int GetLastError () ;
 int INFINITE ;


 int WaitForSingleObject (int ,int ) ;
 int err_win_to_posix (int ) ;

int win32_pthread_join(pthread_t *thread, void **value_ptr)
{
 DWORD result = WaitForSingleObject(thread->handle, INFINITE);
 switch (result) {
  case 128:
   if (value_ptr)
    *value_ptr = thread->arg;
   return 0;
  case 129:
   return EINVAL;
  default:
   return err_win_to_posix(GetLastError());
 }
}
