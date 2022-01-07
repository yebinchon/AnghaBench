
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {scalar_t__ so_pcb; } ;
struct inpcb {long inp_ip_p; int in6p_hops; int in6p_cksum; struct icmp6_filter* in6p_icmp6filt; int inp_vflag; } ;
struct icmp6_filter {int dummy; } ;


 int ENOMEM ;
 int ICMP6_FILTER_SETPASSALL (struct icmp6_filter*) ;
 int INP_INFO_WLOCK (int *) ;
 int INP_INFO_WUNLOCK (int *) ;
 int INP_IPV6 ;
 int INP_WUNLOCK (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 int M_NOWAIT ;
 int M_PCB ;
 int PRIV_NETINET_RAW ;
 int V_ripcbinfo ;
 int free (struct icmp6_filter*,int ) ;
 int in_pcballoc (struct socket*,int *) ;
 struct icmp6_filter* malloc (int,int ,int ) ;
 int priv_check (struct thread*,int ) ;
 int rip_recvspace ;
 int rip_sendspace ;
 int soreserve (struct socket*,int ,int ) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static int
rip6_attach(struct socket *so, int proto, struct thread *td)
{
 struct inpcb *inp;
 struct icmp6_filter *filter;
 int error;

 inp = sotoinpcb(so);
 KASSERT(inp == ((void*)0), ("rip6_attach: inp != NULL"));

 error = priv_check(td, PRIV_NETINET_RAW);
 if (error)
  return (error);
 error = soreserve(so, rip_sendspace, rip_recvspace);
 if (error)
  return (error);
 filter = malloc(sizeof(struct icmp6_filter), M_PCB, M_NOWAIT);
 if (filter == ((void*)0))
  return (ENOMEM);
 INP_INFO_WLOCK(&V_ripcbinfo);
 error = in_pcballoc(so, &V_ripcbinfo);
 if (error) {
  INP_INFO_WUNLOCK(&V_ripcbinfo);
  free(filter, M_PCB);
  return (error);
 }
 inp = (struct inpcb *)so->so_pcb;
 INP_INFO_WUNLOCK(&V_ripcbinfo);
 inp->inp_vflag |= INP_IPV6;
 inp->inp_ip_p = (long)proto;
 inp->in6p_hops = -1;
 inp->in6p_cksum = -1;
 inp->in6p_icmp6filt = filter;
 ICMP6_FILTER_SETPASSALL(inp->in6p_icmp6filt);
 INP_WUNLOCK(inp);
 return (0);
}
