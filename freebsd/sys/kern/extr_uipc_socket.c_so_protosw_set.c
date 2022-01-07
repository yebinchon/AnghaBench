
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct protosw* so_proto; } ;
struct protosw {int dummy; } ;



void
so_protosw_set(struct socket *so, struct protosw *val)
{

 so->so_proto = val;
}
