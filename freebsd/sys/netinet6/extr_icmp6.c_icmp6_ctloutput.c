
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {int sopt_level; int sopt_dir; int sopt_name; int sopt_valsize; } ;
struct socket {int dummy; } ;
struct inpcb {struct icmp6_filter* in6p_icmp6filt; } ;
struct icmp6_filter {int dummy; } ;
typedef int ic6f ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENOPROTOOPT ;

 int INP_RLOCK (struct inpcb*) ;
 int INP_RUNLOCK (struct inpcb*) ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int IPPROTO_ICMPV6 ;


 int sooptcopyin (struct sockopt*,struct icmp6_filter*,int,int) ;
 int sooptcopyout (struct sockopt*,struct icmp6_filter*,int) ;
 struct inpcb* sotoinpcb (struct socket*) ;

int
icmp6_ctloutput(struct socket *so, struct sockopt *sopt)
{
 int error = 0;
 int optlen;
 struct inpcb *inp = sotoinpcb(so);
 int level, op, optname;

 if (sopt) {
  level = sopt->sopt_level;
  op = sopt->sopt_dir;
  optname = sopt->sopt_name;
  optlen = sopt->sopt_valsize;
 } else
  level = op = optname = optlen = 0;

 if (level != IPPROTO_ICMPV6) {
  return EINVAL;
 }

 switch (op) {
 case 128:
  switch (optname) {
  case 130:
      {
   struct icmp6_filter ic6f;

   if (optlen != sizeof(ic6f)) {
    error = EMSGSIZE;
    break;
   }
   error = sooptcopyin(sopt, &ic6f, optlen, optlen);
   if (error == 0) {
    INP_WLOCK(inp);
    *inp->in6p_icmp6filt = ic6f;
    INP_WUNLOCK(inp);
   }
   break;
      }

  default:
   error = ENOPROTOOPT;
   break;
  }
  break;

 case 129:
  switch (optname) {
  case 130:
      {
   struct icmp6_filter ic6f;

   INP_RLOCK(inp);
   ic6f = *inp->in6p_icmp6filt;
   INP_RUNLOCK(inp);
   error = sooptcopyout(sopt, &ic6f, sizeof(ic6f));
   break;
      }

  default:
   error = ENOPROTOOPT;
   break;
  }
  break;
 }

 return (error);
}
