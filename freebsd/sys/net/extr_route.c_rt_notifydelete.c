
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {struct ifaddr* rt_ifa; } ;
struct rt_addrinfo {int dummy; } ;
struct ifaddr {int (* ifa_rtrequest ) (int ,struct rtentry*,struct rt_addrinfo*) ;} ;


 int RTM_DELETE ;
 int V_rttrash ;
 int stub1 (int ,struct rtentry*,struct rt_addrinfo*) ;

__attribute__((used)) static void
rt_notifydelete(struct rtentry *rt, struct rt_addrinfo *info)
{
 struct ifaddr *ifa;




 ifa = rt->rt_ifa;
 if (ifa != ((void*)0) && ifa->ifa_rtrequest != ((void*)0))
  ifa->ifa_rtrequest(RTM_DELETE, rt, info);






 V_rttrash++;
}
