
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct prio_si {struct dn_queue** q_array; int bitmap; } ;
struct TYPE_12__ {int * head; TYPE_5__* tail; } ;
struct TYPE_9__ {int subtype; } ;
struct TYPE_10__ {scalar_t__ len_bytes; scalar_t__ length; TYPE_3__ oid; } ;
struct dn_queue {TYPE_6__ mq; TYPE_4__ ni; TYPE_2__* fs; scalar_t__ _si; } ;
struct TYPE_11__ {int * m_nextpkt; } ;
struct TYPE_7__ {int* par; } ;
struct TYPE_8__ {TYPE_1__ fs; } ;


 int DN_SCHED_PRIO ;
 int __set_bit (int,int *) ;
 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static int
prio_new_queue(struct dn_queue *q)
{
 struct prio_si *si = (struct prio_si *)(q->_si + 1);
 int prio = q->fs->fs.par[0];
 struct dn_queue *oldq;

 q->ni.oid.subtype = DN_SCHED_PRIO;

 if (q->mq.head == ((void*)0))
  return 0;




 if (test_bit(prio, &si->bitmap) == 0) {

  __set_bit(prio, &si->bitmap);
  si->q_array[prio] = q;
 } else if ( (oldq = si->q_array[prio]) != q) {




  oldq->mq.tail->m_nextpkt = q->mq.head;
  oldq->mq.tail = q->mq.tail;
  oldq->ni.length += q->ni.length;
  q->ni.length = 0;
  oldq->ni.len_bytes += q->ni.len_bytes;
  q->ni.len_bytes = 0;
  q->mq.tail = q->mq.head = ((void*)0);
 }
 return 0;
}
