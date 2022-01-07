
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct inpcb {int in6p_icmp6filt; } ;


 int INP_INFO_WLOCK (int *) ;
 int INP_INFO_WUNLOCK (int *) ;
 int INP_WLOCK (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 int M_PCB ;
 struct socket* V_ip6_mrouter ;
 int V_ripcbinfo ;
 int free (int ,int ) ;
 int in_pcbdetach (struct inpcb*) ;
 int in_pcbfree (struct inpcb*) ;
 int ip6_mrouter_done () ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static void
rip6_detach(struct socket *so)
{
 struct inpcb *inp;

 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("rip6_detach: inp == NULL"));

 if (so == V_ip6_mrouter && ip6_mrouter_done)
  ip6_mrouter_done();

 INP_INFO_WLOCK(&V_ripcbinfo);
 INP_WLOCK(inp);
 free(inp->in6p_icmp6filt, M_PCB);
 in_pcbdetach(inp);
 in_pcbfree(inp);
 INP_INFO_WUNLOCK(&V_ripcbinfo);
}
