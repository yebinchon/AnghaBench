
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct route {int dummy; } ;


 int rtalloc_ign_fib (struct route*,int ,int ) ;

void
in_rtalloc_ign(struct route *ro, u_long ignflags, u_int fibnum)
{
 rtalloc_ign_fib(ro, ignflags, fibnum);
}
