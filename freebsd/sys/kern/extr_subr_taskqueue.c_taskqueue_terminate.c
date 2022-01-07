
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct taskqueue {scalar_t__ tq_tcount; scalar_t__ tq_callouts; } ;


 int TQ_SLEEP (struct taskqueue*,struct thread**,char*) ;
 int wakeup (struct taskqueue*) ;

__attribute__((used)) static void
taskqueue_terminate(struct thread **pp, struct taskqueue *tq)
{

 while (tq->tq_tcount > 0 || tq->tq_callouts > 0) {
  wakeup(tq);
  TQ_SLEEP(tq, pp, "tq_destroy");
 }
}
