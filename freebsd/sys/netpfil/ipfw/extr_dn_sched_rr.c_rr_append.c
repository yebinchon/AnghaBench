
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rr_si {struct rr_queue* head; struct rr_queue* tail; } ;
struct rr_queue {int status; struct rr_queue* qnext; int quantum; int credit; } ;



__attribute__((used)) static inline void
rr_append(struct rr_queue *q, struct rr_si *si)
{
 q->status = 1;
 q->credit = q->quantum;


 if (si->head == ((void*)0))
  si->head = q;
 else
  si->tail->qnext = q;
 si->tail = q;
 q->qnext = si->head;
}
