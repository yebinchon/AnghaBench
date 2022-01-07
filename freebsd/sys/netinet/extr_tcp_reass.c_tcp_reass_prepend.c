
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tseg_qent {int tqe_start; int tqe_len; int tqe_mbuf_cnt; struct mbuf* tqe_m; } ;
struct tcphdr {int th_seq; } ;
struct tcpcb {int t_rcvoopack; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; struct mbuf* m_next; } ;


 scalar_t__ SEQ_GT (int,int) ;
 int TCPSTAT_ADD (int ,int) ;
 int TCPSTAT_INC (int ) ;
 int TCP_R_LOG_PREPEND ;
 int TCP_R_LOG_TRIM ;
 int m_adj (struct mbuf*,int) ;
 int tcp_log_reassm (struct tcpcb*,struct tseg_qent*,int *,int,int,int ,int) ;
 int tcp_reass_log_new_in (struct tcpcb*,int,int,struct mbuf*,int ,struct tseg_qent*) ;
 int tcps_rcvoobyte ;
 int tcps_rcvoopack ;

__attribute__((used)) static void
tcp_reass_prepend(struct tcpcb *tp, struct tseg_qent *first, struct mbuf *m, struct tcphdr *th,
    int tlen, struct mbuf *mlast, int lenofoh)
{
 int i;




 if (SEQ_GT((th->th_seq + tlen), first->tqe_start)) {

  i = (th->th_seq + tlen) - first->tqe_start;



  m_adj(first->tqe_m, i);
  first->tqe_len -= i;
  first->tqe_start += i;
 }

 mlast->m_next = first->tqe_m;
 first->tqe_m = m;
 first->tqe_len += tlen;
 first->tqe_start = th->th_seq;
 first->tqe_m->m_pkthdr.len = first->tqe_len;
 first->tqe_mbuf_cnt += lenofoh;
 tp->t_rcvoopack++;
 TCPSTAT_INC(tcps_rcvoopack);
 TCPSTAT_ADD(tcps_rcvoobyte, tlen);





}
