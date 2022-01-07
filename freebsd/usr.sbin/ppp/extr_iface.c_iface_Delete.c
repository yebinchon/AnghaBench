
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ncpaddr {int dummy; } ;
struct ncp {int dummy; } ;
struct iface {unsigned int addrs; TYPE_1__* addr; int name; } ;
struct TYPE_5__ {int ifa; } ;


 int ID0socket (int ,int ,int ) ;
 int LogERROR ;
 int SOCK_DGRAM ;
 int bcopy (TYPE_1__*,TYPE_1__*,unsigned int) ;
 int close (int) ;
 int errno ;
 scalar_t__ iface_addr_Zap (int ,TYPE_1__*,int) ;
 int log_Printf (int ,char*,int ) ;
 int ncp_IfaceAddrDeleted (struct ncp*,TYPE_1__*) ;
 scalar_t__ ncpaddr_equal (struct ncpaddr*,struct ncpaddr const*) ;
 int ncpaddr_family (struct ncpaddr const*) ;
 int ncprange_getaddr (int *,struct ncpaddr*) ;
 int strerror (int ) ;

int
iface_Delete(struct iface *iface, struct ncp *ncp, const struct ncpaddr *del)
{
  struct ncpaddr found;
  unsigned n;
  int res, s;

  if ((s = ID0socket(ncpaddr_family(del), SOCK_DGRAM, 0)) == -1) {
    log_Printf(LogERROR, "iface_Delete: socket(): %s\n", strerror(errno));
    return 0;
  }

  for (n = res = 0; n < iface->addrs; n++) {
    ncprange_getaddr(&iface->addr[n].ifa, &found);
    if (ncpaddr_equal(&found, del)) {
      if (iface_addr_Zap(iface->name, iface->addr + n, s)) {
        ncp_IfaceAddrDeleted(ncp, iface->addr + n);
        bcopy(iface->addr + n + 1, iface->addr + n,
              (iface->addrs - n - 1) * sizeof *iface->addr);
        iface->addrs--;
        res = 1;
      }
      break;
    }
  }

  close(s);

  return res;
}
