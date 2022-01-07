
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tseg_qent {int tqe_len; int tqe_flags; int tqe_mbuf_cnt; TYPE_2__* tqe_m; int tqe_start; struct mbuf* tqe_last; } ;
struct tcphdr {int th_flags; int th_seq; } ;
struct tcpcb {int t_rcvoopack; } ;
struct mbuf {struct mbuf* m_next; } ;
struct TYPE_3__ {int len; } ;
struct TYPE_4__ {TYPE_1__ m_pkthdr; } ;


 int TCPSTAT_ADD (int ,int) ;
 int TCPSTAT_INC (int ) ;
 int TCP_R_LOG_APPEND ;
 int TH_FIN ;
 int tcp_log_reassm (struct tcpcb*,struct tseg_qent*,int *,int ,int,int ,int ) ;
 int tcp_reass_log_new_in (struct tcpcb*,int ,int,TYPE_2__*,int ,struct tseg_qent*) ;
 int tcps_rcvoobyte ;
 int tcps_rcvoopack ;

__attribute__((used)) static void
tcp_reass_append(struct tcpcb *tp, struct tseg_qent *last,
    struct mbuf *m, struct tcphdr *th, int tlen,
    struct mbuf *mlast, int lenofoh)
{




 last->tqe_len += tlen;
 last->tqe_m->m_pkthdr.len += tlen;

 last->tqe_flags |= (th->th_flags & TH_FIN);
 last->tqe_last->m_next = m;
 last->tqe_last = mlast;
 last->tqe_mbuf_cnt += lenofoh;
 tp->t_rcvoopack++;
 TCPSTAT_INC(tcps_rcvoopack);
 TCPSTAT_ADD(tcps_rcvoobyte, tlen);





}
