
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct sockaddr_dl {scalar_t__ sdl_index; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct rt_addrinfo {int rti_flags; TYPE_2__* rti_ifa; int * rti_ifp; struct sockaddr** rti_info; } ;
struct epoch_tracker {int dummy; } ;
struct TYPE_5__ {int * ifa_ifp; } ;
struct TYPE_4__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_LINK ;
 int ENETUNREACH ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 size_t RTAX_IFA ;
 int RTF_GATEWAY ;
 struct sockaddr* dst ;
 int flags ;
 struct sockaddr* gateway ;
 TYPE_2__* ifa_ifwithaddr (int *) ;
 void* ifa_ifwithroute (int ,struct sockaddr*,struct sockaddr*,int ) ;
 int ifa_ref (TYPE_2__*) ;
 int * ifaaddr ;
 void* ifaof_ifpforaddr (struct sockaddr*,int *) ;
 int * ifnet_byindex (scalar_t__) ;
 TYPE_1__* ifpaddr ;

int
rt_getifa_fib(struct rt_addrinfo *info, u_int fibnum)
{
 struct epoch_tracker et;
 int needref, error;





 error = 0;
 needref = (info->rti_ifa == ((void*)0));
 NET_EPOCH_ENTER(et);


 if (info->rti_ifp == ((void*)0) && ifpaddr != ((void*)0) &&
     ifpaddr->sa_family == AF_LINK) {
     const struct sockaddr_dl *sdl = (const struct sockaddr_dl *)ifpaddr;
     if (sdl->sdl_index != 0)
      info->rti_ifp = ifnet_byindex(sdl->sdl_index);
 }




 if (info->rti_ifa == ((void*)0) && ifaaddr != ((void*)0))
  info->rti_ifa = ifa_ifwithaddr(ifaaddr);
 if (info->rti_ifa == ((void*)0)) {
  struct sockaddr *sa;
  if (info->rti_info[RTAX_IFA] != ((void*)0))
   sa = info->rti_info[RTAX_IFA];
  else if ((info->rti_flags & RTF_GATEWAY) != 0 &&
      gateway->sa_family == dst->sa_family)
   sa = gateway;
  else
   sa = dst;
  if (info->rti_ifp != ((void*)0)) {
   info->rti_ifa = ifaof_ifpforaddr(sa, info->rti_ifp);

   if (info->rti_ifa == ((void*)0) && gateway != ((void*)0))
    info->rti_ifa = ifaof_ifpforaddr(gateway, info->rti_ifp);
  } else if (dst != ((void*)0) && gateway != ((void*)0))
   info->rti_ifa = ifa_ifwithroute(flags, dst, gateway,
       fibnum);
  else if (sa != ((void*)0))
   info->rti_ifa = ifa_ifwithroute(flags, sa, sa,
       fibnum);
 }
 if (needref && info->rti_ifa != ((void*)0)) {
  if (info->rti_ifp == ((void*)0))
   info->rti_ifp = info->rti_ifa->ifa_ifp;
  ifa_ref(info->rti_ifa);
 } else
  error = ENETUNREACH;
 NET_EPOCH_EXIT(et);
 return (error);
}
