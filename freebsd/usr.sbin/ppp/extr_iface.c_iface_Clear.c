
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ncp {int dummy; } ;
struct iface {int addrs; TYPE_1__* addr; int name; } ;
struct TYPE_5__ {int system; int ifa; } ;




 int ID0socket (int,int ,int ) ;
 int IFACE_CLEAR_ALL ;
 int IFACE_SYSTEM ;
 int LogERROR ;
 int SOCK_DGRAM ;
 int bcopy (TYPE_1__*,TYPE_1__*,unsigned int) ;
 int close (int) ;
 int errno ;
 scalar_t__ iface_addr_Zap (int ,TYPE_1__*,int) ;
 int log_Printf (int ,char*,int ) ;
 int ncp_IfaceAddrDeleted (struct ncp*,TYPE_1__*) ;
 int ncprange_family (int *) ;
 int strerror (int ) ;

void
iface_Clear(struct iface *iface, struct ncp *ncp, int family, int how)
{
  int af, inskip, in6skip, s4 = -1, s6 = -1, *s;
  unsigned n;

  if (iface->addrs) {
    inskip = in6skip = how == IFACE_CLEAR_ALL ? 0 : 1;

    for (n = 0; n < iface->addrs; n++) {
      af = ncprange_family(&iface->addr[n].ifa);
      if (family == 0 || family == af) {
        if (!iface->addr[n].system && (how & IFACE_SYSTEM))
          continue;
        switch (af) {
        case 129:
          if (inskip) {
            inskip = 0;
            continue;
          }
          s = &s4;
          break;


        case 128:
          if (in6skip) {
            in6skip = 0;
            continue;
          }
          s = &s6;
          break;

        default:
          continue;
        }

        if (*s == -1 && (*s = ID0socket(af, SOCK_DGRAM, 0)) == -1)
          log_Printf(LogERROR, "iface_Clear: socket(): %s\n", strerror(errno));
        else if (iface_addr_Zap(iface->name, iface->addr + n, *s)) {
          ncp_IfaceAddrDeleted(ncp, iface->addr + n);
          bcopy(iface->addr + n + 1, iface->addr + n,
                (iface->addrs - n - 1) * sizeof *iface->addr);
          iface->addrs--;
          n--;
        }
      }
    }



    if (s4)
      close(s4);
    if (s6)
      close(s6);
  }
}
