
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mbuf {int dummy; } ;


 int netisr_dispatch_src (int ,int ,struct mbuf*) ;

int
netisr_dispatch(u_int proto, struct mbuf *m)
{

 return (netisr_dispatch_src(proto, 0, m));
}
