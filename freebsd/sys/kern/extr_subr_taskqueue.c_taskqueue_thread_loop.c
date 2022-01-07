
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskqueue {int tq_flags; int tq_threads; int tq_tcount; } ;


 int TASKQUEUE_CALLBACK_TYPE_INIT ;
 int TASKQUEUE_CALLBACK_TYPE_SHUTDOWN ;
 int TQ_FLAGS_ACTIVE ;
 int TQ_LOCK (struct taskqueue*) ;
 int TQ_SLEEP (struct taskqueue*,struct taskqueue*,char*) ;
 int TQ_UNLOCK (struct taskqueue*) ;
 int kthread_exit () ;
 int taskqueue_run_callback (struct taskqueue*,int ) ;
 int taskqueue_run_locked (struct taskqueue*) ;
 int wakeup_one (int ) ;

void
taskqueue_thread_loop(void *arg)
{
 struct taskqueue **tqp, *tq;

 tqp = arg;
 tq = *tqp;
 taskqueue_run_callback(tq, TASKQUEUE_CALLBACK_TYPE_INIT);
 TQ_LOCK(tq);
 while ((tq->tq_flags & TQ_FLAGS_ACTIVE) != 0) {

  taskqueue_run_locked(tq);





  if ((tq->tq_flags & TQ_FLAGS_ACTIVE) == 0)
   break;
  TQ_SLEEP(tq, tq, "-");
 }
 taskqueue_run_locked(tq);





 TQ_UNLOCK(tq);
 taskqueue_run_callback(tq, TASKQUEUE_CALLBACK_TYPE_SHUTDOWN);
 TQ_LOCK(tq);


 tq->tq_tcount--;
 wakeup_one(tq->tq_threads);
 TQ_UNLOCK(tq);
 kthread_exit();
}
