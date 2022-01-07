
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct sockaddr {int dummy; } ;
struct rtentry {int dummy; } ;


 int RT_DEFAULT_FIB ;
 struct rtentry* rtalloc1_fib (struct sockaddr*,int,int ,int ) ;

struct rtentry *
rtalloc1(struct sockaddr *dst, int report, u_long ignflags)
{

 return (rtalloc1_fib(dst, report, ignflags, RT_DEFAULT_FIB));
}
