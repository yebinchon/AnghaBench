
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_test {int tot_threads_running; scalar_t__ test_options; } ;
struct callout_test {int number_of_callouts; int test_number; } ;
struct callout_run {int index; int co_number_callouts; int co_return_npa; int * co_array; int co_test; scalar_t__ cnt_one; scalar_t__ cnt_zero; scalar_t__ drain_calls; scalar_t__ callout_waiting; scalar_t__ co_completed; int lock; } ;
struct callout {int dummy; } ;


 int CALLOUT_MPSAFE ;
 int MTX_DUPOK ;
 int M_CALLTMP ;
 int M_WAITOK ;
 int callout_init (int *,int ) ;
 struct callout_run** comaster ;
 int execute_the_co_test (struct callout_run*) ;
 int free (int *,int ) ;
 void* malloc (size_t,int ,int ) ;
 int memset (struct callout_run*,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static void
run_callout_test(struct kern_test *test)
{
 struct callout_test *u;
 size_t sz;
 int i;
 struct callout_run *rn;
 int index = test->tot_threads_running;

 u = (struct callout_test *)test->test_options;
 if (comaster[index] == ((void*)0)) {
  rn = comaster[index] = malloc(sizeof(struct callout_run), M_CALLTMP, M_WAITOK);
  memset(comaster[index], 0, sizeof(struct callout_run));
  mtx_init(&rn->lock, "callouttest", ((void*)0), MTX_DUPOK);
  rn->index = index;
 } else {
  rn = comaster[index];
  rn->co_number_callouts = rn->co_return_npa = 0;
  rn->co_completed = rn->callout_waiting = 0;
  rn->drain_calls = rn->cnt_zero = rn->cnt_one = 0;
  if (rn->co_array) {
   free(rn->co_array, M_CALLTMP);
   rn->co_array = ((void*)0);
  }
 }
 rn->co_number_callouts = u->number_of_callouts;
 rn->co_test = u->test_number;
 sz = sizeof(struct callout) * rn->co_number_callouts;
 rn->co_array = malloc(sz, M_CALLTMP, M_WAITOK);
 for (i = 0; i < rn->co_number_callouts; i++) {
  callout_init(&rn->co_array[i], CALLOUT_MPSAFE);
 }
 execute_the_co_test(rn);
}
