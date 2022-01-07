
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncprange {int dummy; } ;
struct ncpaddr {int dummy; } ;
struct ncp {int dummy; } ;
struct iface_addr {int system; int peer; int ifa; } ;
struct iface {unsigned int addrs; struct iface_addr* addr; int name; } ;


 int ID0socket (int,int ,int ) ;
 int IFACE_ADD_FIRST ;
 int IFACE_FORCE_ADD ;
 int IFACE_SYSTEM ;
 int LogERROR ;
 int SOCK_DGRAM ;
 int bcopy (struct iface_addr*,struct iface_addr*,int) ;
 int close (int) ;
 int errno ;
 int iface_addr_Add (int ,struct iface_addr*,int) ;
 int iface_addr_Zap (int ,struct iface_addr*,int) ;
 int log_Printf (int ,char*,int ) ;
 int memcpy (struct iface_addr*,struct iface_addr*,int) ;
 int ncp_IfaceAddrAdded (struct ncp*,struct iface_addr*) ;
 int ncp_IfaceAddrDeleted (struct ncp*,struct iface_addr*) ;
 int ncpaddr_copy (int *,struct ncpaddr const*) ;
 scalar_t__ ncpaddr_equal (int *,struct ncpaddr const*) ;
 scalar_t__ ncprange_contains (int *,struct ncpaddr*) ;
 int ncprange_copy (int *,struct ncprange const*) ;
 scalar_t__ ncprange_equal (int *,struct ncprange const*) ;
 int ncprange_family (struct ncprange const*) ;
 int ncprange_getaddr (struct ncprange const*,struct ncpaddr*) ;
 scalar_t__ realloc (struct iface_addr*,int) ;
 int strerror (int ) ;

int
iface_Add(struct iface *iface, struct ncp *ncp, const struct ncprange *ifa,
          const struct ncpaddr *peer, int how)
{
  int af, removed, s;
  unsigned n;
  struct ncpaddr ncplocal;
  struct iface_addr *addr, newaddr;

  af = ncprange_family(ifa);
  if ((s = ID0socket(af, SOCK_DGRAM, 0)) == -1) {
    log_Printf(LogERROR, "iface_Add: socket(): %s\n", strerror(errno));
    return 0;
  }
  ncprange_getaddr(ifa, &ncplocal);

  for (n = 0; n < iface->addrs; n++) {
    if (ncprange_contains(&iface->addr[n].ifa, &ncplocal) ||
        ncpaddr_equal(&iface->addr[n].peer, peer)) {

      if (!(how & IFACE_FORCE_ADD)) {
        close(s);
        return 0;
      }

      if (ncprange_equal(&iface->addr[n].ifa, ifa) &&
          ncpaddr_equal(&iface->addr[n].peer, peer)) {
        close(s);
        ncp_IfaceAddrAdded(ncp, iface->addr + n);
        return 1;
      }

      removed = iface_addr_Zap(iface->name, iface->addr + n, s);
      if (removed)
        ncp_IfaceAddrDeleted(ncp, iface->addr + n);
      ncprange_copy(&iface->addr[n].ifa, ifa);
      ncpaddr_copy(&iface->addr[n].peer, peer);
      if (!iface_addr_Add(iface->name, iface->addr + n, s)) {
        if (removed) {
          bcopy(iface->addr + n + 1, iface->addr + n,
                (iface->addrs - n - 1) * sizeof *iface->addr);
          iface->addrs--;
          n--;
        }
        close(s);
        return 0;
      }
      close(s);
      ncp_IfaceAddrAdded(ncp, iface->addr + n);
      return 1;
    }
  }

  addr = (struct iface_addr *)realloc
    (iface->addr, (iface->addrs + 1) * sizeof iface->addr[0]);
  if (addr == ((void*)0)) {
    log_Printf(LogERROR, "iface_inAdd: realloc: %s\n", strerror(errno));
    close(s);
    return 0;
  }
  iface->addr = addr;

  ncprange_copy(&newaddr.ifa, ifa);
  ncpaddr_copy(&newaddr.peer, peer);
  newaddr.system = !!(how & IFACE_SYSTEM);
  if (!iface_addr_Add(iface->name, &newaddr, s)) {
    close(s);
    return 0;
  }

  if (how & IFACE_ADD_FIRST) {

    n = 0;
    bcopy(iface->addr, iface->addr + 1, iface->addrs * sizeof *iface->addr);
  } else
    n = iface->addrs;

  iface->addrs++;
  memcpy(iface->addr + n, &newaddr, sizeof(*iface->addr));

  close(s);
  ncp_IfaceAddrAdded(ncp, iface->addr + n);

  return 1;
}
