
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_WAITOK ;
 int PI_SWI (int ) ;
 int SWI_TQ ;
 scalar_t__ mca_banks ;
 int mca_resize_freelist () ;
 int mca_tq ;
 int taskqueue_create_fast (char*,int ,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static void
mca_createtq(void *dummy)
{
 if (mca_banks <= 0)
  return;

 mca_tq = taskqueue_create_fast("mca", M_WAITOK,
     taskqueue_thread_enqueue, &mca_tq);
 taskqueue_start_threads(&mca_tq, 1, PI_SWI(SWI_TQ), "mca taskq");


 mca_resize_freelist();
}
