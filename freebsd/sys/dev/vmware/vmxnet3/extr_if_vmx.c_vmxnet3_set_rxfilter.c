
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct vmxnet3_softc {struct vmxnet3_driver_shared* vmx_ds; struct ifnet* vmx_ifp; } ;
struct vmxnet3_driver_shared {int mcast_tablelen; int rxmode; } ;
struct ifnet {int dummy; } ;


 int ETHER_ADDR_LEN ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int VMXNET3_CMD_SET_FILTER ;
 int VMXNET3_CMD_SET_RXMODE ;
 int VMXNET3_MULTICAST_MAX ;
 int VMXNET3_RXMODE_ALLMULTI ;
 int VMXNET3_RXMODE_BCAST ;
 int VMXNET3_RXMODE_MCAST ;
 int VMXNET3_RXMODE_PROMISC ;
 int VMXNET3_RXMODE_UCAST ;
 int if_foreach_llmaddr (struct ifnet*,int ,struct vmxnet3_softc*) ;
 int vmxnet3_hash_maddr ;
 int vmxnet3_write_cmd (struct vmxnet3_softc*,int ) ;

__attribute__((used)) static void
vmxnet3_set_rxfilter(struct vmxnet3_softc *sc, int flags)
{
 struct ifnet *ifp;
 struct vmxnet3_driver_shared *ds;
 u_int mode;

 ifp = sc->vmx_ifp;
 ds = sc->vmx_ds;

 mode = VMXNET3_RXMODE_UCAST | VMXNET3_RXMODE_BCAST;
 if (flags & IFF_PROMISC)
  mode |= VMXNET3_RXMODE_PROMISC;
 if (flags & IFF_ALLMULTI)
  mode |= VMXNET3_RXMODE_ALLMULTI;
 else {
  int cnt;

  cnt = if_foreach_llmaddr(ifp, vmxnet3_hash_maddr, sc);
  if (cnt >= VMXNET3_MULTICAST_MAX) {
   cnt = 0;
   mode |= VMXNET3_RXMODE_ALLMULTI;
  } else if (cnt > 0)
   mode |= VMXNET3_RXMODE_MCAST;
  ds->mcast_tablelen = cnt * ETHER_ADDR_LEN;
 }

 ds->rxmode = mode;

 vmxnet3_write_cmd(sc, VMXNET3_CMD_SET_FILTER);
 vmxnet3_write_cmd(sc, VMXNET3_CMD_SET_RXMODE);
}
