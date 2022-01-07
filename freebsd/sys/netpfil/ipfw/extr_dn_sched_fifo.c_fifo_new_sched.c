
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dn_sch_inst {TYPE_2__* sched; } ;
struct TYPE_3__ {int oid; } ;
struct dn_queue {int fs; struct dn_sch_inst* _si; TYPE_1__ ni; } ;
struct TYPE_4__ {int fs; } ;


 int DN_QUEUE ;
 int set_oid (int *,int ,int) ;

__attribute__((used)) static int
fifo_new_sched(struct dn_sch_inst *si)
{

 struct dn_queue *q = (struct dn_queue *)(si + 1);

        set_oid(&q->ni.oid, DN_QUEUE, sizeof(*q));
 q->_si = si;
 q->fs = si->sched->fs;
 return 0;
}
