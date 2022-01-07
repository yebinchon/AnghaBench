
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gtaskqueue {int dummy; } ;


 int wakeup_any (struct gtaskqueue*) ;

__attribute__((used)) static void
gtaskqueue_thread_enqueue(void *context)
{
 struct gtaskqueue **tqp, *tq;

 tqp = context;
 tq = *tqp;
 wakeup_any(tq);
}
