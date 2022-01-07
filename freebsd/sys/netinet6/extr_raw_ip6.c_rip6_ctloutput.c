
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockopt {scalar_t__ sopt_level; scalar_t__ sopt_name; int sopt_dir; } ;
struct socket {int so_fibnum; } ;
struct TYPE_2__ {int inc_fibnum; } ;
struct inpcb {TYPE_1__ inp_inc; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 scalar_t__ IPPROTO_ICMPV6 ;
 scalar_t__ IPPROTO_IPV6 ;
 scalar_t__ SOL_SOCKET ;


 scalar_t__ SO_SETFIB ;
 int icmp6_ctloutput (struct socket*,struct sockopt*) ;
 int ip6_ctloutput (struct socket*,struct sockopt*) ;
 int ip6_mrouter_get (struct socket*,struct sockopt*) ;
 int ip6_mrouter_set (struct socket*,struct sockopt*) ;
 int ip6_raw_ctloutput (struct socket*,struct sockopt*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

int
rip6_ctloutput(struct socket *so, struct sockopt *sopt)
{
 struct inpcb *inp;
 int error;

 if (sopt->sopt_level == IPPROTO_ICMPV6)




  return (icmp6_ctloutput(so, sopt));
 else if (sopt->sopt_level != IPPROTO_IPV6) {
  if (sopt->sopt_level == SOL_SOCKET &&
      sopt->sopt_name == SO_SETFIB) {
   inp = sotoinpcb(so);
   INP_WLOCK(inp);
   inp->inp_inc.inc_fibnum = so->so_fibnum;
   INP_WUNLOCK(inp);
   return (0);
  }
  return (EINVAL);
 }

 error = 0;

 switch (sopt->sopt_dir) {
 case 129:
  switch (sopt->sopt_name) {
  case 131:
  case 132:
  case 135:
  case 133:
  case 136:
  case 134:
  case 130:
   error = ip6_mrouter_get ? ip6_mrouter_get(so, sopt) :
       EOPNOTSUPP;
   break;
  case 137:
   error = ip6_raw_ctloutput(so, sopt);
   break;
  default:
   error = ip6_ctloutput(so, sopt);
   break;
  }
  break;

 case 128:
  switch (sopt->sopt_name) {
  case 131:
  case 132:
  case 135:
  case 133:
  case 136:
  case 134:
  case 130:
   error = ip6_mrouter_set ? ip6_mrouter_set(so, sopt) :
       EOPNOTSUPP;
   break;
  case 137:
   error = ip6_raw_ctloutput(so, sopt);
   break;
  default:
   error = ip6_ctloutput(so, sopt);
   break;
  }
  break;
 }

 return (error);
}
