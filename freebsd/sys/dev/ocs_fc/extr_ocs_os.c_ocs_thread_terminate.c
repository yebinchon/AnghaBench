
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int terminate; } ;
typedef TYPE_1__ ocs_thread_t ;
typedef int int32_t ;


 int ocs_atomic_set (int *,int) ;

int32_t
ocs_thread_terminate(ocs_thread_t *thread)
{
 ocs_atomic_set(&thread->terminate, 1);
 return 0;
}
