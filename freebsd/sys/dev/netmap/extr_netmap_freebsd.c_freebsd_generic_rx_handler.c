
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_generic_adapter {int (* save_if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;


 scalar_t__ NA (struct ifnet*) ;
 int NM_NA_VALID (struct ifnet*) ;
 int generic_rx_handler (struct ifnet*,struct mbuf*) ;
 int nm_prlim (int,char*) ;
 int stub1 (struct ifnet*,struct mbuf*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
freebsd_generic_rx_handler(struct ifnet *ifp, struct mbuf *m)
{
 int stolen;

 if (unlikely(!NM_NA_VALID(ifp))) {
  nm_prlim(1, "Warning: RX packet intercepted, but no"
    " emulated adapter");
  return;
 }

 stolen = generic_rx_handler(ifp, m);
 if (!stolen) {
  struct netmap_generic_adapter *gna =
    (struct netmap_generic_adapter *)NA(ifp);
  gna->save_if_input(ifp, m);
 }
}
