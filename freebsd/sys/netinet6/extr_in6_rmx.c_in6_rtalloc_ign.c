
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct route_in6 {int dummy; } ;
struct route {int dummy; } ;


 int rtalloc_ign_fib (struct route*,int ,int ) ;

void
in6_rtalloc_ign(struct route_in6 *ro, u_long ignflags, u_int fibnum)
{

 rtalloc_ign_fib((struct route *)ro, ignflags, fibnum);
}
