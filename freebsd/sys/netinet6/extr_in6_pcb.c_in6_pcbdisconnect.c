
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int inp_flow; scalar_t__ inp_fport; int in6p_faddr; int inp_pcbinfo; } ;
typedef int caddr_t ;


 int INP_HASH_WLOCK_ASSERT (int ) ;
 int INP_WLOCK_ASSERT (struct inpcb*) ;
 int IPV6_FLOWLABEL_MASK ;
 int bzero (int ,int) ;
 int in_pcbrehash (struct inpcb*) ;

void
in6_pcbdisconnect(struct inpcb *inp)
{

 INP_WLOCK_ASSERT(inp);
 INP_HASH_WLOCK_ASSERT(inp->inp_pcbinfo);

 bzero((caddr_t)&inp->in6p_faddr, sizeof(inp->in6p_faddr));
 inp->inp_fport = 0;

 inp->inp_flow &= ~IPV6_FLOWLABEL_MASK;
 in_pcbrehash(inp);
}
