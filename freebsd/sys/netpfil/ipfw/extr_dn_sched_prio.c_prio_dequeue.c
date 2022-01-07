
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prio_si {scalar_t__ bitmap; struct dn_queue** q_array; } ;
struct mbuf {int dummy; } ;
struct dn_sch_inst {int dummy; } ;
struct TYPE_2__ {int * head; } ;
struct dn_queue {TYPE_1__ mq; } ;


 int __clear_bit (int,scalar_t__*) ;
 struct mbuf* dn_dequeue (struct dn_queue*) ;
 int ffs (scalar_t__) ;

__attribute__((used)) static struct mbuf *
prio_dequeue(struct dn_sch_inst *_si)
{
 struct prio_si *si = (struct prio_si *)(_si + 1);
 struct mbuf *m;
 struct dn_queue *q;
 int prio;

 if (si->bitmap == 0)
  return ((void*)0);

 prio = ffs(si->bitmap) - 1;


 q = si->q_array[prio];


 m = dn_dequeue(q);
 if (q->mq.head == ((void*)0)) {



  si->q_array[prio] = ((void*)0);
  __clear_bit(prio, &si->bitmap);
 }
 return m;
}
