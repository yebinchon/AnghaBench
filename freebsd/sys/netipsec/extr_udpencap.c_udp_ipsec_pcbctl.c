
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udpcb {int u_flags; } ;
struct sockopt {scalar_t__ sopt_name; scalar_t__ sopt_dir; } ;
struct inpcb {int dummy; } ;
typedef int optval ;


 int EINVAL ;
 int ENOPROTOOPT ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WLOCK_ASSERT (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 scalar_t__ SOPT_GET ;
 scalar_t__ UDP_ENCAP ;

 int UF_ESPINUDP ;
 struct udpcb* intoudpcb (struct inpcb*) ;
 int sooptcopyin (struct sockopt*,int*,int,int) ;
 int sooptcopyout (struct sockopt*,int*,int) ;

int
udp_ipsec_pcbctl(struct inpcb *inp, struct sockopt *sopt)
{
 struct udpcb *up;
 int error, optval;

 INP_WLOCK_ASSERT(inp);
 if (sopt->sopt_name != UDP_ENCAP) {
  INP_WUNLOCK(inp);
  return (ENOPROTOOPT);
 }

 up = intoudpcb(inp);
 if (sopt->sopt_dir == SOPT_GET) {
  if (up->u_flags & UF_ESPINUDP)
   optval = 128;
  else
   optval = 0;
  INP_WUNLOCK(inp);
  return (sooptcopyout(sopt, &optval, sizeof(optval)));
 }
 INP_WUNLOCK(inp);

 error = sooptcopyin(sopt, &optval, sizeof(optval), sizeof(optval));
 if (error != 0)
  return (error);

 INP_WLOCK(inp);
 switch (optval) {
 case 0:
  up->u_flags &= ~UF_ESPINUDP;
  break;
 case 128:
  up->u_flags |= UF_ESPINUDP;
  break;
 default:
  error = EINVAL;
 }
 INP_WUNLOCK(inp);
 return (error);
}
