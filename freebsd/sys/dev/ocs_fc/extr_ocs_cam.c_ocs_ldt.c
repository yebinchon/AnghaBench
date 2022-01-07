
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ltask; } ;
typedef TYPE_1__ ocs_fcport ;


 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static void
ocs_ldt(void *arg)
{
 ocs_fcport *fcp = arg;
 taskqueue_enqueue(taskqueue_thread, &fcp->ltask);
}
