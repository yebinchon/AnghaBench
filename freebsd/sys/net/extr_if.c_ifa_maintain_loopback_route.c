
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_dl {int dummy; } ;
struct sockaddr {int dummy; } ;
struct rt_addrinfo {int rti_flags; struct sockaddr** rti_info; int * rti_ifa; int * rti_ifp; } ;
struct ifnet {int if_fib; int if_type; } ;
struct ifaddr {int ifa_flags; int ifa_addr; struct ifnet* ifa_ifp; } ;
struct epoch_tracker {int dummy; } ;
typedef int info ;


 int EEXIST ;
 int ENOENT ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 size_t RTAX_DST ;
 size_t RTAX_GATEWAY ;
 int RTF_HOST ;
 int RTF_PINNED ;
 int RTF_STATIC ;
 int RTM_ADD ;
 int RTM_DELETE ;
 int * V_loif ;
 int bzero (struct rt_addrinfo*,int) ;
 int if_printf (struct ifnet*,char*,char const*,int) ;
 int ifa_ref (int *) ;
 int * ifaof_ifpforaddr (int ,int *) ;
 int link_init_sdl (struct ifnet*,struct sockaddr*,int ) ;
 int rtrequest1_fib (int,struct rt_addrinfo*,int *,int ) ;

__attribute__((used)) static int
ifa_maintain_loopback_route(int cmd, const char *otype, struct ifaddr *ifa,
    struct sockaddr *ia)
{
 struct epoch_tracker et;
 int error;
 struct rt_addrinfo info;
 struct sockaddr_dl null_sdl;
 struct ifnet *ifp;

 ifp = ifa->ifa_ifp;

 bzero(&info, sizeof(info));
 if (cmd != RTM_DELETE)
  info.rti_ifp = V_loif;
 if (cmd == RTM_ADD) {

  if (info.rti_ifp != ((void*)0)) {
   NET_EPOCH_ENTER(et);
   info.rti_ifa = ifaof_ifpforaddr(ifa->ifa_addr, info.rti_ifp);
   if (info.rti_ifa != ((void*)0))
    ifa_ref(info.rti_ifa);
   NET_EPOCH_EXIT(et);
  }
 }
 info.rti_flags = ifa->ifa_flags | RTF_HOST | RTF_STATIC | RTF_PINNED;
 info.rti_info[RTAX_DST] = ia;
 info.rti_info[RTAX_GATEWAY] = (struct sockaddr *)&null_sdl;
 link_init_sdl(ifp, (struct sockaddr *)&null_sdl, ifp->if_type);

 error = rtrequest1_fib(cmd, &info, ((void*)0), ifp->if_fib);

 if (error != 0 &&
     !(cmd == RTM_ADD && error == EEXIST) &&
     !(cmd == RTM_DELETE && error == ENOENT))
  if_printf(ifp, "%s failed: %d\n", otype, error);

 return (error);
}
