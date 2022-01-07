
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct protosw* so_proto; } ;
struct protosw {int dummy; } ;



struct protosw *
so_protosw_get(const struct socket *so)
{

 return (so->so_proto);
}
