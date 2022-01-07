
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int tv_sec; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr_dl {int sdl_len; scalar_t__ sdl_family; int sdl_index; int sdl_type; void* sdl_alen; } ;
struct rt_msghdr {int rtm_flags; } ;
struct ether_addr {int dummy; } ;
typedef int sdl_m ;
typedef int max_age ;


 scalar_t__ AF_LINK ;
 int CLOCK_MONOTONIC ;
 void* ETHER_ADDR_LEN ;
 scalar_t__ LLADDR (struct sockaddr_dl*) ;
 int RTF_ANNOUNCE ;
 int RTF_BLACKHOLE ;
 int RTF_GATEWAY ;
 int RTF_REJECT ;
 int RTM_ADD ;
 int RTM_GET ;
 int SA_SIZE (struct sockaddr_in*) ;
 int bzero (struct sockaddr_dl*,int) ;
 int clock_gettime (int ,struct timespec*) ;
 int doing_proxy ;
 struct ether_addr* ether_aton (char*) ;
 int expire_time ;
 int flags ;
 int get_ether_addr (int ,struct ether_addr*) ;
 struct sockaddr_in* getaddr (char*) ;
 char* inet_ntoa (TYPE_1__) ;
 struct rt_msghdr* rtmsg (int ,struct sockaddr_in*,struct sockaddr_dl*) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int *,int ) ;
 int usage () ;
 int valid_type (int ) ;
 int xo_err (int,char*) ;
 int xo_errx (int,char*) ;
 int xo_warn (char*,char*) ;
 int xo_warnx (char*,char*) ;

__attribute__((used)) static int
set(int argc, char **argv)
{
 struct sockaddr_in *addr;
 struct sockaddr_in *dst;
 struct sockaddr_dl *sdl;
 struct rt_msghdr *rtm;
 struct ether_addr *ea;
 char *host = argv[0], *eaddr = argv[1];
 struct sockaddr_dl sdl_m;

 argc -= 2;
 argv += 2;

 bzero(&sdl_m, sizeof(sdl_m));
 sdl_m.sdl_len = sizeof(sdl_m);
 sdl_m.sdl_family = AF_LINK;

 dst = getaddr(host);
 if (dst == ((void*)0))
  return (1);
 doing_proxy = flags = expire_time = 0;
 while (argc-- > 0) {
  if (strcmp(argv[0], "temp") == 0) {
   struct timespec tp;
   int max_age;
   size_t len = sizeof(max_age);

   clock_gettime(CLOCK_MONOTONIC, &tp);
   if (sysctlbyname("net.link.ether.inet.max_age",
       &max_age, &len, ((void*)0), 0) != 0)
    xo_err(1, "sysctlbyname");
   expire_time = tp.tv_sec + max_age;
  } else if (strcmp(argv[0], "pub") == 0) {
   flags |= RTF_ANNOUNCE;
   doing_proxy = 1;
   if (argc && strcmp(argv[1], "only") == 0) {






    argc--; argv++;
   }
  } else if (strcmp(argv[0], "blackhole") == 0) {
   if (flags & RTF_REJECT) {
    xo_errx(1, "Choose one of blackhole or reject, "
        "not both.");
   }
   flags |= RTF_BLACKHOLE;
  } else if (strcmp(argv[0], "reject") == 0) {
   if (flags & RTF_BLACKHOLE) {
    xo_errx(1, "Choose one of blackhole or reject, "
        "not both.");
   }
   flags |= RTF_REJECT;
  } else {
   xo_warnx("Invalid parameter '%s'", argv[0]);
   usage();
  }
  argv++;
 }
 ea = (struct ether_addr *)LLADDR(&sdl_m);
 if (doing_proxy && !strcmp(eaddr, "auto")) {
  if (!get_ether_addr(dst->sin_addr.s_addr, ea)) {
   xo_warnx("no interface found for %s",
          inet_ntoa(dst->sin_addr));
   return (1);
  }
  sdl_m.sdl_alen = ETHER_ADDR_LEN;
 } else {
  struct ether_addr *ea1 = ether_aton(eaddr);

  if (ea1 == ((void*)0)) {
   xo_warnx("invalid Ethernet address '%s'", eaddr);
   return (1);
  } else {
   *ea = *ea1;
   sdl_m.sdl_alen = ETHER_ADDR_LEN;
  }
 }
 rtm = rtmsg(RTM_GET, dst, ((void*)0));
 if (rtm == ((void*)0)) {
  xo_warn("%s", host);
  return (1);
 }
 addr = (struct sockaddr_in *)(rtm + 1);
 sdl = (struct sockaddr_dl *)(SA_SIZE(addr) + (char *)addr);

 if ((sdl->sdl_family != AF_LINK) ||
     (rtm->rtm_flags & RTF_GATEWAY) ||
     !valid_type(sdl->sdl_type)) {
  xo_warnx("cannot intuit interface index and type for %s", host);
  return (1);
 }
 sdl_m.sdl_type = sdl->sdl_type;
 sdl_m.sdl_index = sdl->sdl_index;
 return (rtmsg(RTM_ADD, dst, &sdl_m) == ((void*)0));
}
