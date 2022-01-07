
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rr_si {TYPE_1__* head; TYPE_1__* tail; } ;
struct TYPE_2__ {struct TYPE_2__* qnext; scalar_t__ status; } ;



__attribute__((used)) static inline void
rr_remove_head(struct rr_si *si)
{
 if (si->head == ((void*)0))
  return;
 si->head->status = 0;

 if (si->head == si->tail) {
  si->head = si->tail = ((void*)0);
  return;
 }

 si->head = si->head->qnext;
 si->tail->qnext = si->head;
}
