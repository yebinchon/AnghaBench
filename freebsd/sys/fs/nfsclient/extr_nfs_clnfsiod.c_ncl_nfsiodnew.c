
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NFSASSERTIOD () ;
 int ncl_nfsiodnew_task ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

void
ncl_nfsiodnew(void)
{

 NFSASSERTIOD();
 taskqueue_enqueue(taskqueue_thread, &ncl_nfsiodnew_task);
}
