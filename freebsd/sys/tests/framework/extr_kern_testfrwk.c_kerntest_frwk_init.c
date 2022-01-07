
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_3__ {scalar_t__ kfrwk_waiting; int * kfrwk_tq; int kfrwk_que; int kfrwk_testlist; int kfrwk_testq; } ;


 int KTFRWK_MUTEX_INIT () ;
 scalar_t__ MAXCPU ;
 int M_NOWAIT ;
 int PI_NET ;
 int TAILQ_INIT (int *) ;
 int TASK_INIT (int *,int ,int ,TYPE_1__*) ;
 TYPE_1__ kfrwk ;
 int kfrwk_task ;
 int ktest_frwk_inited ;
 scalar_t__ mp_ncpus ;
 int panic (char*) ;
 int printf (char*) ;
 int * taskqueue_create_fast (char*,int ,int ,int **) ;
 int taskqueue_start_threads (int **,scalar_t__,int ,char*) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
kerntest_frwk_init(void)
{
 u_int ncpus = mp_ncpus ? mp_ncpus : MAXCPU;

 KTFRWK_MUTEX_INIT();
 TAILQ_INIT(&kfrwk.kfrwk_testq);
 TAILQ_INIT(&kfrwk.kfrwk_testlist);

 TASK_INIT(&kfrwk.kfrwk_que, 0, kfrwk_task, &kfrwk);
 kfrwk.kfrwk_tq = taskqueue_create_fast("sbtls_task", M_NOWAIT,
     taskqueue_thread_enqueue, &kfrwk.kfrwk_tq);
 if (kfrwk.kfrwk_tq == ((void*)0)) {
  printf("Can't start taskqueue for Kernel Test Framework\n");
  panic("Taskqueue init fails for kfrwk");
 }
 taskqueue_start_threads(&kfrwk.kfrwk_tq, ncpus, PI_NET, "[kt_frwk task]");
 kfrwk.kfrwk_waiting = ncpus;
 ktest_frwk_inited = 1;
 return (0);
}
