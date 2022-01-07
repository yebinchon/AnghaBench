
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


struct TYPE_11__ {scalar_t__ head; } ;
struct dn_queue {TYPE_5__ mq; TYPE_4__* _si; struct dn_fsk* fs; } ;
struct dn_fsk {TYPE_3__* sched; TYPE_1__* aqmfp; } ;
struct TYPE_12__ {int queue_count; } ;
struct TYPE_10__ {int q_count; } ;
struct TYPE_9__ {TYPE_2__* fp; } ;
struct TYPE_8__ {int (* free_queue ) (struct dn_queue*) ;} ;
struct TYPE_7__ {int (* cleanup ) (struct dn_queue*) ;} ;


 int DN_DESTROY ;
 int M_DUMMYNET ;
 int bzero (struct dn_queue*,int) ;
 TYPE_6__ dn_cfg ;
 int dn_free_pkts (scalar_t__) ;
 int free (struct dn_queue*,int ) ;
 int stub1 (struct dn_queue*) ;
 int stub2 (struct dn_queue*) ;

__attribute__((used)) static void
dn_delete_queue(struct dn_queue *q, int flags)
{
 struct dn_fsk *fs = q->fs;
 if (fs && fs->sched->fp->free_queue)
  fs->sched->fp->free_queue(q);
 q->_si->q_count--;
 q->_si = ((void*)0);
 if (flags & DN_DESTROY) {
  if (q->mq.head)
   dn_free_pkts(q->mq.head);
  bzero(q, sizeof(*q));
  free(q, M_DUMMYNET);
  dn_cfg.queue_count--;
 }
}
