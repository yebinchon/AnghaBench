
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_addrinfo {int dummy; } ;


 int RT_ALL_FIBS ;
 int rt_missmsg_fib (int,struct rt_addrinfo*,int,int,int ) ;

void
rt_missmsg(int type, struct rt_addrinfo *rtinfo, int flags, int error)
{

 rt_missmsg_fib(type, rtinfo, flags, error, RT_ALL_FIBS);
}
