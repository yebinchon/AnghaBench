
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int len; } ;
struct mbuf {TYPE_2__ m_pkthdr; struct mbuf* m_nextpkt; } ;
struct TYPE_9__ {scalar_t__ length; } ;
struct TYPE_8__ {int q_time; TYPE_4__ ni; } ;
struct fq_codel_si {TYPE_3__ main_q; } ;
struct TYPE_6__ {struct mbuf* head; } ;
struct fq_codel_flow {TYPE_1__ mq; } ;
struct TYPE_10__ {int curr_time; } ;


 int FREE_PKT (struct mbuf*) ;
 TYPE_5__ dn_cfg ;
 int fq_update_stats (struct fq_codel_flow*,struct fq_codel_si*,int ,int) ;

__attribute__((used)) static void
codel_drop_head(struct fq_codel_flow *q, struct fq_codel_si *si)
{
 struct mbuf *m = q->mq.head;

 if (m == ((void*)0))
  return;
 q->mq.head = m->m_nextpkt;

 fq_update_stats(q, si, -m->m_pkthdr.len, 1);

 if (si->main_q.ni.length == 0)
   si->main_q.q_time = dn_cfg.curr_time;

 FREE_PKT(m);
}
