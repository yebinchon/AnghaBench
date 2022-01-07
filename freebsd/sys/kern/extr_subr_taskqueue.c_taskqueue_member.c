
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct taskqueue {int tq_tcount; struct thread** tq_threads; } ;



int
taskqueue_member(struct taskqueue *queue, struct thread *td)
{
 int i, j, ret = 0;

 for (i = 0, j = 0; ; i++) {
  if (queue->tq_threads[i] == ((void*)0))
   continue;
  if (queue->tq_threads[i] == td) {
   ret = 1;
   break;
  }
  if (++j >= queue->tq_tcount)
   break;
 }
 return (ret);
}
