
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct rt_msghdr {int rtm_addrs; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {struct in6_addr sin6_addr; } ;


 size_t RTAX_DST ;
 int RTAX_MAX ;
 TYPE_1__* SIN6 (struct sockaddr*) ;
 int get_rtaddrs (int ,struct sockaddr*,struct sockaddr**) ;

struct in6_addr *
get_addr(char *buf)
{
 struct rt_msghdr *rtm = (struct rt_msghdr *)buf;
 struct sockaddr *sa, *rti_info[RTAX_MAX];

 sa = (struct sockaddr *)(rtm + 1);
 get_rtaddrs(rtm->rtm_addrs, sa, rti_info);

 return (&SIN6(rti_info[RTAX_DST])->sin6_addr);
}
