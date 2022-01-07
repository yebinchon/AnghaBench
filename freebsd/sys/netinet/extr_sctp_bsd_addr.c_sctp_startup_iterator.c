
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ thread_proc; int iteratorhead; } ;


 int RFPROC ;
 int SCTP_IPI_ITERATOR_WQ_INIT () ;
 int SCTP_ITERATOR_LOCK_INIT () ;
 int SCTP_KTHREAD_PAGES ;
 int SCTP_KTRHEAD_NAME ;
 int TAILQ_INIT (int *) ;
 int kproc_create (int ,void*,scalar_t__*,int ,int ,int ) ;
 TYPE_1__ sctp_it_ctl ;
 int sctp_iterator_thread ;

void
sctp_startup_iterator(void)
{
 if (sctp_it_ctl.thread_proc) {

  return;
 }

 SCTP_ITERATOR_LOCK_INIT();
 SCTP_IPI_ITERATOR_WQ_INIT();
 TAILQ_INIT(&sctp_it_ctl.iteratorhead);
 kproc_create(sctp_iterator_thread,
     (void *)((void*)0),
     &sctp_it_ctl.thread_proc,
     RFPROC,
     SCTP_KTHREAD_PAGES,
     SCTP_KTRHEAD_NAME);
}
