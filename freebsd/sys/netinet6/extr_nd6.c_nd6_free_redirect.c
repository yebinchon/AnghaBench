
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct rt_addrinfo {int rti_filter; struct sockaddr** rti_info; } ;
struct llentry {int dummy; } ;
typedef int info ;


 size_t RTAX_DST ;
 int RTM_DELETE ;
 int lltable_fill_sa_entry (struct llentry const*,struct sockaddr*) ;
 int memset (struct rt_addrinfo*,int ,int) ;
 int nd6_isdynrte ;
 int rt_numfibs ;
 int rtrequest1_fib (int ,struct rt_addrinfo*,int *,int) ;

__attribute__((used)) static void
nd6_free_redirect(const struct llentry *ln)
{
 int fibnum;
 struct sockaddr_in6 sin6;
 struct rt_addrinfo info;

 lltable_fill_sa_entry(ln, (struct sockaddr *)&sin6);
 memset(&info, 0, sizeof(info));
 info.rti_info[RTAX_DST] = (struct sockaddr *)&sin6;
 info.rti_filter = nd6_isdynrte;

 for (fibnum = 0; fibnum < rt_numfibs; fibnum++)
  rtrequest1_fib(RTM_DELETE, &info, ((void*)0), fibnum);
}
