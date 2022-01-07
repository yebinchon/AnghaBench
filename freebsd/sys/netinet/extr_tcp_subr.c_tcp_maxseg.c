
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct tcpcb {int t_flags; int rcv_numsacks; scalar_t__ t_maxseg; int t_state; } ;


 scalar_t__ PAD (scalar_t__) ;
 scalar_t__ TCPOLEN_MAXSEG ;
 int TCPOLEN_SACK ;
 scalar_t__ TCPOLEN_SACKHDR ;
 scalar_t__ TCPOLEN_SACK_PERMITTED ;
 scalar_t__ TCPOLEN_SIGNATURE ;
 scalar_t__ TCPOLEN_TSTAMP_APPA ;
 scalar_t__ TCPOLEN_WINDOW ;
 scalar_t__ TCPS_HAVEESTABLISHED (int ) ;
 int TCP_MAXOLEN ;
 int TF_NOOPT ;
 int TF_RCVD_TSTMP ;
 int TF_REQ_SCALE ;
 int TF_REQ_TSTMP ;
 int TF_SACK_PERMIT ;
 int TF_SIGNATURE ;
 scalar_t__ min (scalar_t__,int ) ;

u_int
tcp_maxseg(const struct tcpcb *tp)
{
 u_int optlen;

 if (tp->t_flags & TF_NOOPT)
  return (tp->t_maxseg);
 if (TCPS_HAVEESTABLISHED(tp->t_state)) {
  if (tp->t_flags & TF_RCVD_TSTMP)
   optlen = TCPOLEN_TSTAMP_APPA;
  else
   optlen = 0;




  if ((tp->t_flags & TF_SACK_PERMIT) && tp->rcv_numsacks > 0) {
   optlen += TCPOLEN_SACKHDR;
   optlen += tp->rcv_numsacks * TCPOLEN_SACK;
   optlen = ((((optlen) / 4) + !!((optlen) % 4)) * 4);
  }
 } else {
  if (tp->t_flags & TF_REQ_TSTMP)
   optlen = TCPOLEN_TSTAMP_APPA;
  else
   optlen = ((((TCPOLEN_MAXSEG) / 4) + !!((TCPOLEN_MAXSEG) % 4)) * 4);
  if (tp->t_flags & TF_REQ_SCALE)
   optlen += ((((TCPOLEN_WINDOW) / 4) + !!((TCPOLEN_WINDOW) % 4)) * 4);




  if (tp->t_flags & TF_SACK_PERMIT)
   optlen += ((((TCPOLEN_SACK_PERMITTED) / 4) + !!((TCPOLEN_SACK_PERMITTED) % 4)) * 4);
 }

 optlen = min(optlen, TCP_MAXOLEN);
 return (tp->t_maxseg - optlen);
}
