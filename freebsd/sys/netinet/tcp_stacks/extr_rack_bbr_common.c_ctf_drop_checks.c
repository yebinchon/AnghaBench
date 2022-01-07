
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpopt {int dummy; } ;
struct tcphdr {int th_seq; int th_urp; } ;
struct tcpcb {int rcv_nxt; int t_flags; int rcv_wnd; } ;
struct mbuf {int dummy; } ;
typedef int int32_t ;


 int TCPSTAT_ADD (int ,int) ;
 int TCPSTAT_INC (int ) ;
 int TF_ACKNOW ;
 int TF_SACK_PERMIT ;
 int TH_FIN ;
 int TH_PUSH ;
 int TH_SYN ;
 int TH_URG ;
 int ctf_do_dropafterack (struct mbuf*,struct tcpcb*,struct tcphdr*,int,int,int*) ;
 int m_adj (struct mbuf*,int) ;
 int tcp_update_sack_list (struct tcpcb*,int,int) ;
 int tcps_rcvbyteafterwin ;
 int tcps_rcvdupbyte ;
 int tcps_rcvduppack ;
 int tcps_rcvpackafterwin ;
 int tcps_rcvpartdupbyte ;
 int tcps_rcvpartduppack ;
 int tcps_rcvwinprobe ;

int
ctf_drop_checks(struct tcpopt *to, struct mbuf *m, struct tcphdr *th, struct tcpcb *tp, int32_t * tlenp, int32_t * thf, int32_t * drop_hdrlen, int32_t * ret_val)
{
 int32_t todrop;
 int32_t thflags;
 int32_t tlen;

 thflags = *thf;
 tlen = *tlenp;
 todrop = tp->rcv_nxt - th->th_seq;
 if (todrop > 0) {
  if (thflags & TH_SYN) {
   thflags &= ~TH_SYN;
   th->th_seq++;
   if (th->th_urp > 1)
    th->th_urp--;
   else
    thflags &= ~TH_URG;
   todrop--;
  }



  if (todrop > tlen
      || (todrop == tlen && (thflags & TH_FIN) == 0)) {





   thflags &= ~TH_FIN;




   tp->t_flags |= TF_ACKNOW;
   todrop = tlen;
   TCPSTAT_INC(tcps_rcvduppack);
   TCPSTAT_ADD(tcps_rcvdupbyte, todrop);
  } else {
   TCPSTAT_INC(tcps_rcvpartduppack);
   TCPSTAT_ADD(tcps_rcvpartdupbyte, todrop);
  }



  if (tp->t_flags & TF_SACK_PERMIT) {
   tcp_update_sack_list(tp, th->th_seq,
       th->th_seq + todrop);




   tp->t_flags |= TF_ACKNOW;
  }
  *drop_hdrlen += todrop;
  th->th_seq += todrop;
  tlen -= todrop;
  if (th->th_urp > todrop)
   th->th_urp -= todrop;
  else {
   thflags &= ~TH_URG;
   th->th_urp = 0;
  }
 }




 todrop = (th->th_seq + tlen) - (tp->rcv_nxt + tp->rcv_wnd);
 if (todrop > 0) {
  TCPSTAT_INC(tcps_rcvpackafterwin);
  if (todrop >= tlen) {
   TCPSTAT_ADD(tcps_rcvbyteafterwin, tlen);







   if (tp->rcv_wnd == 0 && th->th_seq == tp->rcv_nxt) {
    tp->t_flags |= TF_ACKNOW;
    TCPSTAT_INC(tcps_rcvwinprobe);
   } else {
    ctf_do_dropafterack(m, tp, th, thflags, tlen, ret_val);
    return (1);
   }
  } else
   TCPSTAT_ADD(tcps_rcvbyteafterwin, todrop);
  m_adj(m, -todrop);
  tlen -= todrop;
  thflags &= ~(TH_PUSH | TH_FIN);
 }
 *thf = thflags;
 *tlenp = tlen;
 return (0);
}
