
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tcb; } ;
typedef TYPE_1__ ocs_thread_t ;
typedef int int32_t ;


 int SRQ_BORING ;
 int sched_add (int ,int ) ;

int32_t ocs_thread_start(ocs_thread_t *thread)
{
 sched_add(thread->tcb, SRQ_BORING);
 return 0;
}
