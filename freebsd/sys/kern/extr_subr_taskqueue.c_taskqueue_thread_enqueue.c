
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskqueue {int dummy; } ;


 int wakeup_any (struct taskqueue*) ;

void
taskqueue_thread_enqueue(void *context)
{
 struct taskqueue **tqp, *tq;

 tqp = context;
 tq = *tqp;
 wakeup_any(tq);
}
