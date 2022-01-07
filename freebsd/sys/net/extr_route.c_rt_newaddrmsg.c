
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int dummy; } ;
struct ifaddr {int dummy; } ;


 int RT_ALL_FIBS ;
 int rt_newaddrmsg_fib (int,struct ifaddr*,int,struct rtentry*,int ) ;

void
rt_newaddrmsg(int cmd, struct ifaddr *ifa, int error, struct rtentry *rt)
{

 rt_newaddrmsg_fib(cmd, ifa, error, rt, RT_ALL_FIBS);
}
