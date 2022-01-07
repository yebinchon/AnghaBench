
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {int sin_family; int sin_len; scalar_t__ sin6_family; TYPE_1__ sin_addr; } ;
struct TYPE_4__ {void* ia6t_pltime; void* ia6t_vltime; } ;
struct in6_aliasreq {char const* ifra_name; TYPE_2__ ifra_lifetime; struct sockaddr_in ifra_dstaddr; struct sockaddr_in ifra_prefixmask; struct sockaddr_in ifra_addr; int ifra_broadaddr; int ifra_mask; } ;
struct ifaliasreq {char const* ifra_name; TYPE_2__ ifra_lifetime; struct sockaddr_in ifra_dstaddr; struct sockaddr_in ifra_prefixmask; struct sockaddr_in ifra_addr; int ifra_broadaddr; int ifra_mask; } ;
struct iface_addr {int ifa; int peer; } ;




 scalar_t__ AF_UNSPEC ;
 int ID0ioctl (int,int ,struct in6_aliasreq*) ;
 int INADDR_NONE ;
 int LogDEBUG ;
 int LogWARN ;
 int NCP_ASCIIBUFFERSIZE ;
 void* ND6_INFINITE_LIFETIME ;
 int SIOCAIFADDR ;
 int SIOCAIFADDR_IN6 ;
 int errno ;
 int in6mask128 ;
 int log_IsKept (int ) ;
 int log_Printf (int ,char*,char const*,char*,...) ;
 int memcmp (int *,int *,int) ;
 int memcpy (struct sockaddr_in*,struct sockaddr_storage*,int) ;
 int memset (struct in6_aliasreq*,char,int) ;
 scalar_t__ ncpaddr_family (int *) ;
 int ncpaddr_getsa (int *,struct sockaddr_storage*) ;
 char* ncpaddr_ntoa (int *) ;
 int const ncprange_family (int *) ;
 int ncprange_getsa (int *,struct sockaddr_storage*,struct sockaddr_storage*) ;
 char* ncprange_ntoa (int *) ;
 int snprintf (char*,int,char*,char*) ;
 int strerror (int) ;
 int strncpy (char const*,char const*,int) ;

__attribute__((used)) static int
iface_addr_Add(const char *name, struct iface_addr *addr, int s)
{
  struct ifaliasreq ifra;

  struct in6_aliasreq ifra6;

  struct sockaddr_in *me4, *msk4, *peer4;
  struct sockaddr_storage ssme, sspeer, ssmsk;
  int res, saved_errno;

  ncprange_getsa(&addr->ifa, &ssme, &ssmsk);
  ncpaddr_getsa(&addr->peer, &sspeer);
  res = 0;

  switch (ncprange_family(&addr->ifa)) {
  case 129:
    memset(&ifra, '\0', sizeof ifra);
    strncpy(ifra.ifra_name, name, sizeof ifra.ifra_name - 1);

    me4 = (struct sockaddr_in *)&ifra.ifra_addr;
    memcpy(me4, &ssme, sizeof *me4);

    msk4 = (struct sockaddr_in *)&ifra.ifra_mask;
    memcpy(msk4, &ssmsk, sizeof *msk4);

    peer4 = (struct sockaddr_in *)&ifra.ifra_broadaddr;
    if (ncpaddr_family(&addr->peer) == AF_UNSPEC) {
      peer4->sin_family = 129;
      peer4->sin_len = sizeof(*peer4);
      peer4->sin_addr.s_addr = INADDR_NONE;
    } else
      memcpy(peer4, &sspeer, sizeof *peer4);

    res = ID0ioctl(s, SIOCAIFADDR, &ifra);
    saved_errno = errno;
    if (log_IsKept(LogDEBUG)) {
      char buf[NCP_ASCIIBUFFERSIZE];

      snprintf(buf, sizeof buf, "%s", ncprange_ntoa(&addr->ifa));
      log_Printf(LogWARN, "%s: AIFADDR %s -> %s returns %d\n",
                 ifra.ifra_name, buf, ncpaddr_ntoa(&addr->peer), res);
    }
    break;


  case 128:
    memset(&ifra6, '\0', sizeof ifra6);
    strncpy(ifra6.ifra_name, name, sizeof ifra6.ifra_name - 1);

    memcpy(&ifra6.ifra_addr, &ssme, sizeof ifra6.ifra_addr);
    memcpy(&ifra6.ifra_prefixmask, &ssmsk, sizeof ifra6.ifra_prefixmask);
    if (ncpaddr_family(&addr->peer) == AF_UNSPEC)
      ifra6.ifra_dstaddr.sin6_family = AF_UNSPEC;
    else if (memcmp(&((struct sockaddr_in6 *)&ssmsk)->sin6_addr, &in6mask128,
      sizeof in6mask128) == 0)
      memcpy(&ifra6.ifra_dstaddr, &sspeer, sizeof ifra6.ifra_dstaddr);
    ifra6.ifra_lifetime.ia6t_vltime = ND6_INFINITE_LIFETIME;
    ifra6.ifra_lifetime.ia6t_pltime = ND6_INFINITE_LIFETIME;

    res = ID0ioctl(s, SIOCAIFADDR_IN6, &ifra6);
    saved_errno = errno;
    break;

  }

  if (res == -1) {
    char dst[NCP_ASCIIBUFFERSIZE];
    const char *end =

      ncprange_family(&addr->ifa) == 128 ? "_IN6" :

      "";

    if (ncpaddr_family(&addr->peer) == AF_UNSPEC)
      log_Printf(LogWARN, "iface add: ioctl(SIOCAIFADDR%s, %s): %s\n",
                 end, ncprange_ntoa(&addr->ifa), strerror(saved_errno));
    else {
      snprintf(dst, sizeof dst, "%s", ncpaddr_ntoa(&addr->peer));
      log_Printf(LogWARN, "iface add: ioctl(SIOCAIFADDR%s, %s -> %s): %s\n",
                 end, ncprange_ntoa(&addr->ifa), dst, strerror(saved_errno));
    }
  }

  return res != -1;
}
