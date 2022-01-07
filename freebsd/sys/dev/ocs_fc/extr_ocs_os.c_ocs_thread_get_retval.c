
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int retval; } ;
typedef TYPE_1__ ocs_thread_t ;
typedef int int32_t ;



int32_t
ocs_thread_get_retval(ocs_thread_t *thread)
{
 return thread->retval;
}
