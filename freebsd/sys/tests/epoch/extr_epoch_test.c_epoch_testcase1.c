
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct epoch_tracker {int dummy; } ;
struct epoch_test_instance {int threadid; } ;


 int epoch_enter_preempt (int ,struct epoch_tracker*) ;
 int epoch_exit_preempt (int ,struct epoch_tracker*) ;
 int epoch_wait_preempt (int ) ;
 int iterations ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 struct mtx mutexA ;
 struct mtx mutexB ;
 int printf (char*,int,int,int) ;
 int test_epoch ;
 int ticks ;

__attribute__((used)) static void
epoch_testcase1(struct epoch_test_instance *eti)
{
 int i, startticks;
 struct mtx *mtxp;
 struct epoch_tracker et;

 startticks = ticks;
 i = 0;
 if (eti->threadid & 0x1)
  mtxp = &mutexA;
 else
  mtxp = &mutexB;

 while (i < iterations) {
  epoch_enter_preempt(test_epoch, &et);
  mtx_lock(mtxp);
  i++;
  mtx_unlock(mtxp);
  epoch_exit_preempt(test_epoch, &et);
  epoch_wait_preempt(test_epoch);
 }
 printf("test1: thread: %d took %d ticks to complete %d iterations\n",
     eti->threadid, ticks - startticks, iterations);
}
