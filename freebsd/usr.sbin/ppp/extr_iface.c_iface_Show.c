
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ncpaddr {int dummy; } ;
struct in_addr {int s_addr; } ;
struct iface {int flags; int addrs; TYPE_2__* addr; int mtu; int index; int name; } ;
struct cmdargs {int prompt; TYPE_1__* bundle; } ;
struct TYPE_6__ {int flag; int value; } ;
struct TYPE_5__ {int ifa; struct ncpaddr peer; } ;
struct TYPE_4__ {struct iface* iface; } ;




 int AF_UNSPEC ;
 TYPE_3__* if_flags ;
 struct iface* iface_Create (int ) ;
 int iface_Free (struct iface*) ;
 int ncpaddr_family (struct ncpaddr*) ;
 int ncpaddr_ntoa (struct ncpaddr*) ;
 int ncprange_family (int *) ;
 int ncprange_getaddr (int *,struct ncpaddr*) ;
 int ncprange_getip4mask (int *,struct in_addr*) ;
 int ncprange_getwidth (int *,int*) ;
 int ncprange_scopeid (int *) ;
 scalar_t__ ntohl (int ) ;
 int prompt_Printf (int ,char*,...) ;

int
iface_Show(struct cmdargs const *arg)
{
  struct ncpaddr ncpaddr;
  struct iface *iface = arg->bundle->iface, *current;
  unsigned f;
  int flags;

  int scopeid, width;

  struct in_addr mask;

  current = iface_Create(iface->name);
  flags = iface->flags = current->flags;
  iface_Free(current);

  prompt_Printf(arg->prompt, "%s (idx %d) <", iface->name, iface->index);
  for (f = 0; f < sizeof if_flags / sizeof if_flags[0]; f++)
    if ((if_flags[f].flag & flags)) {
      prompt_Printf(arg->prompt, "%s%s", flags == iface->flags ? "" : ",",
                    if_flags[f].value);
      flags &= ~if_flags[f].flag;
    }







  prompt_Printf(arg->prompt, "> mtu %lu has %d address%s:\n", iface->mtu,
                iface->addrs, iface->addrs == 1 ? "" : "es");

  for (f = 0; f < iface->addrs; f++) {
    ncprange_getaddr(&iface->addr[f].ifa, &ncpaddr);
    switch (ncprange_family(&iface->addr[f].ifa)) {
    case 129:
      prompt_Printf(arg->prompt, "  inet %s --> ", ncpaddr_ntoa(&ncpaddr));
      if (ncpaddr_family(&iface->addr[f].peer) == AF_UNSPEC)
        prompt_Printf(arg->prompt, "255.255.255.255");
      else
        prompt_Printf(arg->prompt, "%s", ncpaddr_ntoa(&iface->addr[f].peer));
      ncprange_getip4mask(&iface->addr[f].ifa, &mask);
      prompt_Printf(arg->prompt, " netmask 0x%08lx", (long)ntohl(mask.s_addr));
      break;


    case 128:
      prompt_Printf(arg->prompt, "  inet6 %s", ncpaddr_ntoa(&ncpaddr));
      if (ncpaddr_family(&iface->addr[f].peer) != AF_UNSPEC)
        prompt_Printf(arg->prompt, " --> %s",
                      ncpaddr_ntoa(&iface->addr[f].peer));
      ncprange_getwidth(&iface->addr[f].ifa, &width);
      if (ncpaddr_family(&iface->addr[f].peer) == AF_UNSPEC)
        prompt_Printf(arg->prompt, " prefixlen %d", width);
      if ((scopeid = ncprange_scopeid(&iface->addr[f].ifa)) != -1)
        prompt_Printf(arg->prompt, " scopeid 0x%x", (unsigned)scopeid);
      break;

    }
    prompt_Printf(arg->prompt, "\n");
  }

  return 0;
}
