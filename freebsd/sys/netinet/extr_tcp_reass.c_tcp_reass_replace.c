
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int tcp_seq ;
struct tseg_qent {int tqe_mbuf_cnt; int tqe_len; int tqe_flags; struct mbuf* tqe_m; int tqe_start; struct mbuf* tqe_last; } ;
struct tcpcb {int t_segqmbuflen; int t_rcvoopack; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 int KASSERT (int,char*) ;
 int TCPSTAT_ADD (int ,int) ;
 int TCPSTAT_INC (int ) ;
 int TCP_R_LOG_REPLACE ;
 int TH_FIN ;
 int m_freem (struct mbuf*) ;
 int tcp_log_reassm (struct tcpcb*,struct tseg_qent*,int *,int ,int,int ,int ) ;
 int tcps_rcvoobyte ;
 int tcps_rcvoopack ;

__attribute__((used)) static void
tcp_reass_replace(struct tcpcb *tp, struct tseg_qent *q, struct mbuf *m,
    tcp_seq seq, int len, struct mbuf *mlast, int mbufoh, uint8_t flags)
{




 int len_dif;




 m_freem(q->tqe_m);
 KASSERT(tp->t_segqmbuflen >= q->tqe_mbuf_cnt,
  ("Tp:%p seg queue goes negative", tp));
 tp->t_segqmbuflen -= q->tqe_mbuf_cnt;
 q->tqe_mbuf_cnt = mbufoh;
 q->tqe_m = m;
 q->tqe_last = mlast;
 q->tqe_start = seq;
 if (len > q->tqe_len)
  len_dif = len - q->tqe_len;
 else
  len_dif = 0;
 tp->t_rcvoopack++;
 TCPSTAT_INC(tcps_rcvoopack);
 TCPSTAT_ADD(tcps_rcvoobyte, len_dif);
 q->tqe_len = len;
 q->tqe_flags = (flags & TH_FIN);
 q->tqe_m->m_pkthdr.len = q->tqe_len;
 tp->t_segqmbuflen += mbufoh;

}
