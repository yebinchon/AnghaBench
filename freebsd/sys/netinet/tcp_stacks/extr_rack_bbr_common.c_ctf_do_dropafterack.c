
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int th_ack; } ;
struct tcpcb {scalar_t__ t_state; int t_flags; int snd_max; int snd_una; } ;
struct mbuf {int dummy; } ;
typedef int int32_t ;


 int BANDLIM_RST_OPENPORT ;
 scalar_t__ SEQ_GT (int ,int ) ;
 scalar_t__ TCPS_SYN_RECEIVED ;
 int TF_ACKNOW ;
 int TH_ACK ;
 int ctf_do_dropwithreset (struct mbuf*,struct tcpcb*,struct tcphdr*,int ,int) ;
 int m_freem (struct mbuf*) ;

void
ctf_do_dropafterack(struct mbuf *m, struct tcpcb *tp, struct tcphdr *th, int32_t thflags, int32_t tlen, int32_t * ret_val)
{
 if (tp->t_state == TCPS_SYN_RECEIVED && (thflags & TH_ACK) &&
     (SEQ_GT(tp->snd_una, th->th_ack) ||
     SEQ_GT(th->th_ack, tp->snd_max))) {
  *ret_val = 1;
  ctf_do_dropwithreset(m, tp, th, BANDLIM_RST_OPENPORT, tlen);
  return;
 } else
  *ret_val = 0;
 tp->t_flags |= TF_ACKNOW;
 if (m)
  m_freem(m);
}
