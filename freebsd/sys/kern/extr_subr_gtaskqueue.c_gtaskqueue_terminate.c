
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct gtaskqueue {scalar_t__ tq_tcount; scalar_t__ tq_callouts; } ;


 int TQ_SLEEP (struct gtaskqueue*,struct thread**,char*) ;
 int wakeup (struct gtaskqueue*) ;

__attribute__((used)) static void
gtaskqueue_terminate(struct thread **pp, struct gtaskqueue *tq)
{

 while (tq->tq_tcount > 0 || tq->tq_callouts > 0) {
  wakeup(tq);
  TQ_SLEEP(tq, pp, "gtq_destroy");
 }
}
