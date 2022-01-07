
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct tcpcb {int t_flags; scalar_t__ t_maxseg; int t_state; } ;


 int PAD (int ) ;
 int TCPOLEN_MAXSEG ;
 int TCPOLEN_SACK_PERMITTED ;
 int TCPOLEN_SIGNATURE ;
 int TCPOLEN_TSTAMP_APPA ;
 int TCPOLEN_WINDOW ;
 scalar_t__ TCPS_HAVEESTABLISHED (int ) ;
 int TCP_MAXOLEN ;
 int TF_NOOPT ;
 int TF_RCVD_TSTMP ;
 int TF_REQ_SCALE ;
 int TF_REQ_TSTMP ;
 int TF_SACK_PERMIT ;
 int TF_SIGNATURE ;
 int min (int,int ) ;

uint32_t
ctf_fixed_maxseg(struct tcpcb *tp)
{
 int optlen;

 if (tp->t_flags & TF_NOOPT)
  return (tp->t_maxseg);
 if (TCPS_HAVEESTABLISHED(tp->t_state)) {
  if (tp->t_flags & TF_RCVD_TSTMP)
   optlen = TCPOLEN_TSTAMP_APPA;
  else
   optlen = 0;




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
