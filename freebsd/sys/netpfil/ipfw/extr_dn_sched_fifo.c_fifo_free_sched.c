
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dn_sch_inst {int dummy; } ;
struct TYPE_2__ {int head; } ;
struct dn_queue {TYPE_1__ mq; } ;


 int bzero (struct dn_queue*,int) ;
 int dn_free_pkts (int ) ;

__attribute__((used)) static int
fifo_free_sched(struct dn_sch_inst *si)
{
 struct dn_queue *q = (struct dn_queue *)(si + 1);
 dn_free_pkts(q->mq.head);
 bzero(q, sizeof(*q));
 return 0;
}
