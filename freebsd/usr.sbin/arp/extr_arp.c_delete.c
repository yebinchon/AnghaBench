
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr_dl {scalar_t__ sdl_family; int sdl_type; } ;
struct rt_msghdr {int rtm_flags; } ;


 scalar_t__ AF_LINK ;
 int RTF_ANNOUNCE ;
 int RTF_GATEWAY ;
 int RTF_LLDATA ;
 int RTM_DELETE ;
 int RTM_GET ;
 int SA_SIZE (struct sockaddr_in*) ;
 int flags ;
 struct sockaddr_in* getaddr (char*) ;
 char* inet_ntoa (TYPE_1__) ;
 int printf (char*,char*,char*) ;
 struct rt_msghdr* rtmsg (int ,struct sockaddr_in*,int *) ;
 scalar_t__ valid_type (int ) ;
 int xo_warn (char*,char*) ;
 int xo_warnx (char*,char*) ;

__attribute__((used)) static int
delete(char *host)
{
 struct sockaddr_in *addr, *dst;
 struct rt_msghdr *rtm;
 struct sockaddr_dl *sdl;

 dst = getaddr(host);
 if (dst == ((void*)0))
  return (1);




 flags &= ~RTF_ANNOUNCE;

 for (;;) {
  rtm = rtmsg(RTM_GET, dst, ((void*)0));
  if (rtm == ((void*)0)) {
   xo_warn("%s", host);
   return (1);
  }
  addr = (struct sockaddr_in *)(rtm + 1);
  sdl = (struct sockaddr_dl *)(SA_SIZE(addr) + (char *)addr);
  if (sdl->sdl_family == AF_LINK &&
      !(rtm->rtm_flags & RTF_GATEWAY) &&
      valid_type(sdl->sdl_type) ) {
   addr->sin_addr.s_addr = dst->sin_addr.s_addr;
   break;
  }





  if (flags & RTF_ANNOUNCE) {
   xo_warnx("delete: cannot locate %s", host);
   return (1);
  }

  flags |= RTF_ANNOUNCE;
 }
 rtm->rtm_flags |= RTF_LLDATA;
 if (rtmsg(RTM_DELETE, dst, ((void*)0)) != ((void*)0)) {
  printf("%s (%s) deleted\n", host, inet_ntoa(addr->sin_addr));
  return (0);
 }
 return (1);
}
