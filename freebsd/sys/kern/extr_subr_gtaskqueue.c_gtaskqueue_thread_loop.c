
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gtaskqueue {int tq_flags; int tq_threads; int tq_tcount; } ;


 int TASKQUEUE_CALLBACK_TYPE_INIT ;
 int TASKQUEUE_CALLBACK_TYPE_SHUTDOWN ;
 int TQ_FLAGS_ACTIVE ;
 int TQ_LOCK (struct gtaskqueue*) ;
 int TQ_SLEEP (struct gtaskqueue*,struct gtaskqueue*,char*) ;
 int TQ_UNLOCK (struct gtaskqueue*) ;
 int gtaskqueue_run_callback (struct gtaskqueue*,int ) ;
 int gtaskqueue_run_locked (struct gtaskqueue*) ;
 int kthread_exit () ;
 int wakeup_one (int ) ;

__attribute__((used)) static void
gtaskqueue_thread_loop(void *arg)
{
 struct gtaskqueue **tqp, *tq;

 tqp = arg;
 tq = *tqp;
 gtaskqueue_run_callback(tq, TASKQUEUE_CALLBACK_TYPE_INIT);
 TQ_LOCK(tq);
 while ((tq->tq_flags & TQ_FLAGS_ACTIVE) != 0) {

  gtaskqueue_run_locked(tq);





  if ((tq->tq_flags & TQ_FLAGS_ACTIVE) == 0)
   break;
  TQ_SLEEP(tq, tq, "-");
 }
 gtaskqueue_run_locked(tq);





 TQ_UNLOCK(tq);
 gtaskqueue_run_callback(tq, TASKQUEUE_CALLBACK_TYPE_SHUTDOWN);
 TQ_LOCK(tq);


 tq->tq_tcount--;
 wakeup_one(tq->tq_threads);
 TQ_UNLOCK(tq);
 kthread_exit();
}
