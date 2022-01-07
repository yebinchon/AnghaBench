
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tseg_qent {int tqe_flags; scalar_t__ tqe_len; TYPE_3__* tqe_m; scalar_t__ tqe_mbuf_cnt; TYPE_1__* tqe_last; } ;
struct tcpcb {int t_segqlen; int t_segq; } ;
struct TYPE_5__ {int len; } ;
struct TYPE_6__ {TYPE_2__ m_pkthdr; } ;
struct TYPE_4__ {TYPE_3__* m_next; } ;


 int TAILQ_REMOVE (int *,struct tseg_qent*,int ) ;
 int TCP_R_LOG_MERGE_INTO ;
 int TH_FIN ;
 int counter_u64_add (int ,int) ;
 int merge_into ;
 int tcp_log_reassm (struct tcpcb*,struct tseg_qent*,struct tseg_qent*,int ,int ,int ,int ) ;
 int tcp_reass_zone ;
 int tqe_q ;
 int uma_zfree (int ,struct tseg_qent*) ;

__attribute__((used)) static void
tcp_reass_merge_into(struct tcpcb *tp, struct tseg_qent *ent,
    struct tseg_qent *q)
{
 ent->tqe_last->m_next = q->tqe_m;
 ent->tqe_last = q->tqe_last;
 ent->tqe_len += q->tqe_len;
 ent->tqe_mbuf_cnt += q->tqe_mbuf_cnt;
 ent->tqe_m->m_pkthdr.len += q->tqe_len;
 ent->tqe_flags |= (q->tqe_flags & TH_FIN);
 TAILQ_REMOVE(&tp->t_segq, q, tqe_q);
 uma_zfree(tcp_reass_zone, q);
 tp->t_segqlen--;

}
