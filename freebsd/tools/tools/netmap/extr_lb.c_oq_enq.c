
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct overflow_queue {size_t tail; size_t size; int n; struct netmap_slot* slots; int name; } ;
struct netmap_slot {int dummy; } ;


 int D (char*,int ) ;
 int abort () ;
 int oq_full (struct overflow_queue*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void
oq_enq(struct overflow_queue *q, const struct netmap_slot *s)
{
 if (unlikely(oq_full(q))) {
  D("%s: queue full!", q->name);
  abort();
 }
 q->slots[q->tail] = *s;
 q->n++;
 q->tail++;
 if (q->tail >= q->size)
  q->tail = 0;
}
