
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int terminate; } ;
typedef TYPE_1__ ocs_thread_t ;
typedef int int32_t ;


 int ocs_atomic_read (int *) ;

int32_t ocs_thread_terminate_requested(ocs_thread_t *thread)
{
 return ocs_atomic_read(&thread->terminate);
}
