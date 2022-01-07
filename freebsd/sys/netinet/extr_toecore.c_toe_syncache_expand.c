
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpopt {int dummy; } ;
struct tcphdr {int dummy; } ;
struct socket {int dummy; } ;
struct in_conninfo {int dummy; } ;


 int NET_EPOCH_ASSERT () ;
 int syncache_expand (struct in_conninfo*,struct tcpopt*,struct tcphdr*,struct socket**,int *) ;

int
toe_syncache_expand(struct in_conninfo *inc, struct tcpopt *to,
    struct tcphdr *th, struct socket **lsop)
{

 NET_EPOCH_ASSERT();

 return (syncache_expand(inc, to, th, lsop, ((void*)0)));
}
