
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int dummy; } ;
struct inpcb {int inp_flags; } ;
struct in_conninfo {int inc_flags; int inc_lport; int inc_laddr; int inc_fport; int inc_faddr; int inc6_laddr; int inc6_faddr; } ;
struct ifnet {int dummy; } ;


 int EADDRINUSE ;
 int INC_ISIPV6 ;
 int INPLOOKUP_WLOCKPCB ;
 int INP_TIMEWAIT ;
 int INP_WLOCK_ASSERT (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int V_tcbinfo ;
 struct inpcb* in6_pcblookup (int *,int *,int ,int *,int ,int ,struct ifnet*) ;
 struct inpcb* in_pcblookup (int *,int ,int ,int ,int ,int ,struct ifnet*) ;
 int tcp_twcheck (struct inpcb*,int *,struct tcphdr*,int *,int ) ;

int
toe_4tuple_check(struct in_conninfo *inc, struct tcphdr *th, struct ifnet *ifp)
{
 struct inpcb *inp;

 if (inc->inc_flags & INC_ISIPV6) {
  inp = in6_pcblookup(&V_tcbinfo, &inc->inc6_faddr,
      inc->inc_fport, &inc->inc6_laddr, inc->inc_lport,
      INPLOOKUP_WLOCKPCB, ifp);
 } else {
  inp = in_pcblookup(&V_tcbinfo, inc->inc_faddr, inc->inc_fport,
      inc->inc_laddr, inc->inc_lport, INPLOOKUP_WLOCKPCB, ifp);
 }
 if (inp != ((void*)0)) {
  INP_WLOCK_ASSERT(inp);

  if ((inp->inp_flags & INP_TIMEWAIT) && th != ((void*)0)) {
   if (!tcp_twcheck(inp, ((void*)0), th, ((void*)0), 0))
    return (EADDRINUSE);
  } else {
   INP_WUNLOCK(inp);
   return (EADDRINUSE);
  }
 }

 return (0);
}
