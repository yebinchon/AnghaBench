
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct tcpopt {int* to_signature; int to_nsacks; int* to_sacks; int to_tfo_len; int* to_tfo_cookie; scalar_t__ to_flags; void* to_tsecr; void* to_tsval; int to_wscale; int to_mss; } ;


 int TCPOLEN_MAXSEG ;
 int TCPOLEN_SACK ;
 int TCPOLEN_SACK_PERMITTED ;
 int TCPOLEN_SIGNATURE ;
 int TCPOLEN_TIMESTAMP ;
 int TCPOLEN_WINDOW ;
 int TCPOPT_EOL ;


 int TCPOPT_NOP ;





 int TCPSTAT_INC (int ) ;
 int TCP_MAX_WINSHIFT ;
 scalar_t__ TOF_FASTOPEN ;
 scalar_t__ TOF_MSS ;
 scalar_t__ TOF_SACK ;
 scalar_t__ TOF_SACKPERM ;
 scalar_t__ TOF_SCALE ;
 scalar_t__ TOF_SIGNATURE ;
 scalar_t__ TOF_TS ;
 int TO_SYN ;
 int V_tcp_do_sack ;
 int V_tcp_fastopen_client_enable ;
 int V_tcp_fastopen_server_enable ;
 int bcopy (char*,char*,int) ;
 int min (int,int ) ;
 void* ntohl (void*) ;
 int ntohs (int ) ;
 int tcps_sack_rcv_blocks ;

void
tcp_dooptions(struct tcpopt *to, u_char *cp, int cnt, int flags)
{
 int opt, optlen;

 to->to_flags = 0;
 for (; cnt > 0; cnt -= optlen, cp += optlen) {
  opt = cp[0];
  if (opt == TCPOPT_EOL)
   break;
  if (opt == TCPOPT_NOP)
   optlen = 1;
  else {
   if (cnt < 2)
    break;
   optlen = cp[1];
   if (optlen < 2 || optlen > cnt)
    break;
  }
  switch (opt) {
  case 133:
   if (optlen != TCPOLEN_MAXSEG)
    continue;
   if (!(flags & TO_SYN))
    continue;
   to->to_flags |= TOF_MSS;
   bcopy((char *)cp + 2,
       (char *)&to->to_mss, sizeof(to->to_mss));
   to->to_mss = ntohs(to->to_mss);
   break;
  case 128:
   if (optlen != TCPOLEN_WINDOW)
    continue;
   if (!(flags & TO_SYN))
    continue;
   to->to_flags |= TOF_SCALE;
   to->to_wscale = min(cp[2], TCP_MAX_WINSHIFT);
   break;
  case 129:
   if (optlen != TCPOLEN_TIMESTAMP)
    continue;
   to->to_flags |= TOF_TS;
   bcopy((char *)cp + 2,
       (char *)&to->to_tsval, sizeof(to->to_tsval));
   to->to_tsval = ntohl(to->to_tsval);
   bcopy((char *)cp + 6,
       (char *)&to->to_tsecr, sizeof(to->to_tsecr));
   to->to_tsecr = ntohl(to->to_tsecr);
   break;
  case 130:







   if (optlen != TCPOLEN_SIGNATURE)
    continue;
   to->to_flags |= TOF_SIGNATURE;
   to->to_signature = cp + 2;
   break;
  case 131:
   if (optlen != TCPOLEN_SACK_PERMITTED)
    continue;
   if (!(flags & TO_SYN))
    continue;
   if (!V_tcp_do_sack)
    continue;
   to->to_flags |= TOF_SACKPERM;
   break;
  case 132:
   if (optlen <= 2 || (optlen - 2) % TCPOLEN_SACK != 0)
    continue;
   if (flags & TO_SYN)
    continue;
   to->to_flags |= TOF_SACK;
   to->to_nsacks = (optlen - 2) / TCPOLEN_SACK;
   to->to_sacks = cp + 2;
   TCPSTAT_INC(tcps_sack_rcv_blocks);
   break;
  case 134:





   if (!(flags & TO_SYN))
    continue;
   if (!V_tcp_fastopen_client_enable &&
       !V_tcp_fastopen_server_enable)
    continue;
   to->to_flags |= TOF_FASTOPEN;
   to->to_tfo_len = optlen - 2;
   to->to_tfo_cookie = to->to_tfo_len ? cp + 2 : ((void*)0);
   break;
  default:
   continue;
  }
 }
}
