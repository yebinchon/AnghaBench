
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct overflow_queue {size_t head; size_t size; int n; int name; struct netmap_slot* slots; } ;
struct netmap_slot {int dummy; } ;


 int D (char*,int ) ;
 int abort () ;
 int oq_empty (struct overflow_queue*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline struct netmap_slot
oq_deq(struct overflow_queue *q)
{
 struct netmap_slot s = q->slots[q->head];
 if (unlikely(oq_empty(q))) {
  D("%s: queue empty!", q->name);
  abort();
 }
 q->n--;
 q->head++;
 if (q->head >= q->size)
  q->head = 0;
 return s;
}
