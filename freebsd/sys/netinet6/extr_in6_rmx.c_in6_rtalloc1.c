
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct sockaddr {int dummy; } ;
struct rtentry {int dummy; } ;


 struct rtentry* rtalloc1_fib (struct sockaddr*,int,int ,int ) ;

struct rtentry *
in6_rtalloc1(struct sockaddr *dst, int report, u_long ignflags, u_int fibnum)
{

 return (rtalloc1_fib(dst, report, ignflags, fibnum));
}
