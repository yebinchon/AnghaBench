
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpopt {int dummy; } ;
struct tcphdr {int dummy; } ;
struct socket {int dummy; } ;
struct inpcb {struct socket* inp_socket; } ;
struct in_conninfo {int dummy; } ;


 int INP_WLOCK_ASSERT (struct inpcb*) ;
 int syncache_add (struct in_conninfo*,struct tcpopt*,struct tcphdr*,struct inpcb*,struct socket**,int *,void*,void*) ;

void
toe_syncache_add(struct in_conninfo *inc, struct tcpopt *to, struct tcphdr *th,
    struct inpcb *inp, void *tod, void *todctx)
{
 struct socket *lso = inp->inp_socket;

 INP_WLOCK_ASSERT(inp);

 syncache_add(inc, to, th, inp, &lso, ((void*)0), tod, todctx);
}
