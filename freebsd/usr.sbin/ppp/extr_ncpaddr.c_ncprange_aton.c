
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {void* s_addr; } ;
struct TYPE_14__ {scalar_t__ s_addr; } ;
struct ncprange {int ncprange_ip4width; int ncprange_ip6width; int ncprange_ip6addr; void* ncprange_family; TYPE_6__ ncprange_ip4mask; TYPE_7__ ncprange_ip4addr; } ;
struct TYPE_11__ {TYPE_7__* dns; } ;
struct TYPE_12__ {TYPE_4__ ns; TYPE_7__ my_ip; TYPE_7__ peer_ip; } ;
struct TYPE_9__ {int ncpaddr_ip6addr; } ;
struct TYPE_8__ {int ncpaddr_ip6addr; } ;
struct TYPE_10__ {TYPE_2__ myaddr; TYPE_1__ hisaddr; } ;
struct ncp {TYPE_5__ ipcp; TYPE_3__ ipv6cp; } ;


 void* AF_INET ;
 void* AF_INET6 ;
 TYPE_7__ GetIpAddr (char*) ;
 scalar_t__ IN6_IS_ADDR_UNSPECIFIED (int *) ;
 scalar_t__ INADDR_ANY ;
 void* INADDR_BROADCAST ;
 scalar_t__ INADDR_NONE ;
 int LogWARN ;
 scalar_t__ alloca (int) ;
 TYPE_6__ bits2mask4 (int) ;
 int inet_pton (void*,char*,int *) ;
 int log_Printf (int ,char*,...) ;
 char* strchr (char const*,char) ;
 int strcspn (char const*,char*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 int strncpy (char*,char const*,int) ;
 int strtol (char const*,char**,int ) ;

int
ncprange_aton(struct ncprange *range, struct ncp *ncp, const char *data)
{
  int bits, len;
  char *wp;
  const char *cp;
  char *s;

  len = strcspn(data, "/");

  if (ncp && strncasecmp(data, "HISADDR", len) == 0) {
    range->ncprange_family = AF_INET;
    range->ncprange_ip4addr = ncp->ipcp.peer_ip;
    range->ncprange_ip4mask.s_addr = INADDR_BROADCAST;
    range->ncprange_ip4width = 32;
    return 1;

  } else if (ncp && strncasecmp(data, "HISADDR6", len) == 0) {
    range->ncprange_family = AF_INET6;
    range->ncprange_ip6addr = ncp->ipv6cp.hisaddr.ncpaddr_ip6addr;
    range->ncprange_ip6width = 128;
    return 1;

  } else if (ncp && strncasecmp(data, "MYADDR", len) == 0) {
    range->ncprange_family = AF_INET;
    range->ncprange_ip4addr = ncp->ipcp.my_ip;
    range->ncprange_ip4mask.s_addr = INADDR_BROADCAST;
    range->ncprange_ip4width = 32;
    return 1;

  } else if (ncp && strncasecmp(data, "MYADDR6", len) == 0) {
    range->ncprange_family = AF_INET6;
    range->ncprange_ip6addr = ncp->ipv6cp.myaddr.ncpaddr_ip6addr;
    range->ncprange_ip6width = 128;
    return 1;

  } else if (ncp && strncasecmp(data, "DNS0", len) == 0) {
    range->ncprange_family = AF_INET;
    range->ncprange_ip4addr = ncp->ipcp.ns.dns[0];
    range->ncprange_ip4mask.s_addr = INADDR_BROADCAST;
    range->ncprange_ip4width = 32;
    return 1;
  } else if (ncp && strncasecmp(data, "DNS1", len) == 0) {
    range->ncprange_family = AF_INET;
    range->ncprange_ip4addr = ncp->ipcp.ns.dns[1];
    range->ncprange_ip4mask.s_addr = INADDR_BROADCAST;
    range->ncprange_ip4width = 32;
    return 1;
  }

  s = (char *)alloca(len + 1);
  strncpy(s, data, len);
  s[len] = '\0';
  bits = -1;

  if (data[len] != '\0') {
    bits = strtol(data + len + 1, &wp, 0);
    if (*wp || wp == data + len + 1 || bits < 0 || bits > 128) {
      log_Printf(LogWARN, "ncprange_aton: bad mask width.\n");
      return 0;
    }
  }

  if ((cp = strchr(data, ':')) == ((void*)0)) {
    range->ncprange_family = AF_INET;

    range->ncprange_ip4addr = GetIpAddr(s);

    if (range->ncprange_ip4addr.s_addr == INADDR_NONE) {
      log_Printf(LogWARN, "ncprange_aton: %s: Bad address\n", s);
      return 0;
    }

    if (range->ncprange_ip4addr.s_addr == INADDR_ANY) {
      range->ncprange_ip4mask.s_addr = INADDR_ANY;
      range->ncprange_ip4width = 0;
    } else if (bits == -1) {
      range->ncprange_ip4mask.s_addr = INADDR_BROADCAST;
      range->ncprange_ip4width = 32;
    } else if (bits > 32) {
      log_Printf(LogWARN, "ncprange_aton: bad mask width.\n");
      return 0;
    } else {
      range->ncprange_ip4mask = bits2mask4(bits);
      range->ncprange_ip4width = bits;
    }

    return 1;

  } else if (strchr(cp + 1, ':') != ((void*)0)) {
    range->ncprange_family = AF_INET6;

    if (inet_pton(AF_INET6, s, &range->ncprange_ip6addr) != 1) {
      log_Printf(LogWARN, "ncprange_aton: %s: Bad address\n", s);
      return 0;
    }

    if (IN6_IS_ADDR_UNSPECIFIED(&range->ncprange_ip6addr))
      range->ncprange_ip6width = 0;
    else
      range->ncprange_ip6width = (bits == -1) ? 128 : bits;
    return 1;

  }

  return 0;
}
