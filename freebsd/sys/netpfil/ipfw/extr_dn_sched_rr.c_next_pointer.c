
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rr_si {TYPE_2__* tail; TYPE_1__* head; } ;
struct TYPE_4__ {struct TYPE_4__* qnext; } ;
struct TYPE_3__ {struct TYPE_3__* qnext; } ;



__attribute__((used)) static inline void
next_pointer(struct rr_si *si)
{
 if (si->head == ((void*)0))
  return;

 si->head = si->head->qnext;
 si->tail = si->tail->qnext;
}
