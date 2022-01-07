
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int callout_reset (int *,int,void (*) (void*),int *) ;
 int hz ;
 int mca_scan_task ;
 int mca_ticks ;
 int mca_timer ;
 int mca_tq ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
mca_periodic_scan(void *arg)
{

 taskqueue_enqueue(mca_tq, &mca_scan_task);
 callout_reset(&mca_timer, mca_ticks * hz, mca_periodic_scan, ((void*)0));
}
