
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int dummy; } ;
struct tcpcb {scalar_t__ ts_recent_age; scalar_t__ ts_recent; } ;
struct mbuf {int dummy; } ;
typedef scalar_t__ int32_t ;


 int TCPSTAT_ADD (int ,scalar_t__) ;
 int TCPSTAT_INC (int ) ;
 scalar_t__ TCP_PAWS_IDLE ;
 int ctf_do_drop (struct mbuf*,int *) ;
 int ctf_do_dropafterack (struct mbuf*,struct tcpcb*,struct tcphdr*,scalar_t__,scalar_t__,scalar_t__*) ;
 scalar_t__ tcp_ts_getticks () ;
 int tcps_pawsdrop ;
 int tcps_rcvdupbyte ;
 int tcps_rcvduppack ;

int
ctf_ts_check(struct mbuf *m, struct tcphdr *th, struct tcpcb *tp,
    int32_t tlen, int32_t thflags, int32_t * ret_val)
{

 if (tcp_ts_getticks() - tp->ts_recent_age > TCP_PAWS_IDLE) {
  tp->ts_recent = 0;
 } else {
  TCPSTAT_INC(tcps_rcvduppack);
  TCPSTAT_ADD(tcps_rcvdupbyte, tlen);
  TCPSTAT_INC(tcps_pawsdrop);
  *ret_val = 0;
  if (tlen) {
   ctf_do_dropafterack(m, tp, th, thflags, tlen, ret_val);
  } else {
   ctf_do_drop(m, ((void*)0));
  }
  return (1);
 }
 return (0);
}
