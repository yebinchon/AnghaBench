
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_len; } ;
struct rt_msghdr {int rtm_addrs; } ;
struct TYPE_2__ {int sin6_addr; } ;


 int RTAX_MAX ;
 size_t RTAX_NETMASK ;
 TYPE_1__* SIN6 (struct sockaddr*) ;
 int get_rtaddrs (int ,struct sockaddr*,struct sockaddr**) ;
 int prefixlen (char*,char*) ;

int
get_prefixlen(char *buf)
{
 struct rt_msghdr *rtm = (struct rt_msghdr *)buf;
 struct sockaddr *sa, *rti_info[RTAX_MAX];
 char *p, *lim;

 sa = (struct sockaddr *)(rtm + 1);
 get_rtaddrs(rtm->rtm_addrs, sa, rti_info);
 sa = rti_info[RTAX_NETMASK];

 p = (char *)(&SIN6(sa)->sin6_addr);
 lim = (char *)sa + sa->sa_len;
 return prefixlen(p, lim);
}
