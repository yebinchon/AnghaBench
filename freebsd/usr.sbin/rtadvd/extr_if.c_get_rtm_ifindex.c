
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_dl {int sdl_index; } ;
struct sockaddr {int dummy; } ;
struct rt_msghdr {int rtm_addrs; } ;


 size_t RTAX_GATEWAY ;
 int RTAX_MAX ;
 int get_rtaddrs (int ,struct sockaddr*,struct sockaddr**) ;

int
get_rtm_ifindex(char *buf)
{
 struct rt_msghdr *rtm = (struct rt_msghdr *)buf;
 struct sockaddr *sa, *rti_info[RTAX_MAX];

 sa = (struct sockaddr *)(rtm + 1);
 get_rtaddrs(rtm->rtm_addrs, sa, rti_info);

 return (((struct sockaddr_dl *)rti_info[RTAX_GATEWAY])->sdl_index);
}
