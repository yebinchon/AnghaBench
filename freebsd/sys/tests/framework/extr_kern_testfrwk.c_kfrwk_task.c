
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kern_totfrwk {int kfrwk_waiting; int kfrwk_que; int kfrwk_tq; int kfrwk_testq; } ;
struct TYPE_4__ {scalar_t__ tot_threads_running; } ;
struct kern_test_entry {TYPE_1__* kt_e; TYPE_2__ kt_data; } ;
struct kern_test {int dummy; } ;
typedef int kt_data ;
typedef int (* kerntfunc ) (struct kern_test*) ;
struct TYPE_3__ {int (* func ) (struct kern_test*) ;} ;


 int KTFRWK_LOCK () ;
 int KTFRWK_UNLOCK () ;
 int M_KTFRWK ;
 struct kern_test_entry* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct kern_test_entry*,int ) ;
 int atomic_add_int (int *,int) ;
 int free (struct kern_test_entry*,int ) ;
 int memcpy (struct kern_test*,TYPE_2__*,int) ;
 int memset (struct kern_test*,int ,int) ;
 int next ;
 int stub1 (struct kern_test*) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
kfrwk_task(void *context, int pending)
{
 struct kern_totfrwk *tf;
 struct kern_test_entry *wk;
 int free_mem = 0;
 struct kern_test kt_data;
 kerntfunc ktf;

 memset(&kt_data, 0, sizeof(kt_data));
 ktf = ((void*)0);
 tf = (struct kern_totfrwk *)context;
 KTFRWK_LOCK();
 wk = TAILQ_FIRST(&tf->kfrwk_testq);
 if (wk) {
  wk->kt_data.tot_threads_running--;
  tf->kfrwk_waiting--;
  memcpy(&kt_data, &wk->kt_data, sizeof(kt_data));
  if (wk->kt_data.tot_threads_running == 0) {
   TAILQ_REMOVE(&tf->kfrwk_testq, wk, next);
   free_mem = 1;
  } else {

   taskqueue_enqueue(tf->kfrwk_tq, &tf->kfrwk_que);
  }
  if (wk->kt_e) {
   ktf = wk->kt_e->func;
  }
 }
 KTFRWK_UNLOCK();
 if (wk && free_mem) {
  free(wk, M_KTFRWK);
 }

 if (ktf) {
  (*ktf) (&kt_data);
 }

 atomic_add_int(&tf->kfrwk_waiting, 1);
}
