
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct epoch_tracker {int dummy; } ;
struct epoch_test_instance {int threadid; } ;


 int DELAY (int) ;
 int epoch_enter_preempt (int ,struct epoch_tracker*) ;
 int epoch_exit_preempt (int ,struct epoch_tracker*) ;
 int epoch_wait_preempt (int ) ;
 int iterations ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 struct mtx mutexA ;
 int printf (char*,int,int,int) ;
 int test_epoch ;
 int ticks ;

__attribute__((used)) static void
epoch_testcase2(struct epoch_test_instance *eti)
{
 int i, startticks;
 struct mtx *mtxp;
 struct epoch_tracker et;

 startticks = ticks;
 i = 0;
 mtxp = &mutexA;

 while (i < iterations) {
  epoch_enter_preempt(test_epoch, &et);
  mtx_lock(mtxp);
  DELAY(1);
  i++;
  mtx_unlock(mtxp);
  epoch_exit_preempt(test_epoch, &et);
  epoch_wait_preempt(test_epoch);
 }
 printf("test2: thread: %d took %d ticks to complete %d iterations\n",
     eti->threadid, ticks - startticks, iterations);
}
