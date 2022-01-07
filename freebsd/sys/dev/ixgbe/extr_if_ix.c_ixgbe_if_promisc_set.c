
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ifnet {int if_flags; } ;
struct adapter {int hw; } ;
typedef int if_ctx_t ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int IXGBE_FCTRL ;
 int IXGBE_FCTRL_MPE ;
 int IXGBE_FCTRL_UPE ;
 int IXGBE_READ_REG (int *,int ) ;
 int IXGBE_WRITE_REG (int *,int ,int) ;
 int MAX_NUM_MULTICAST_ADDRESSES ;
 int if_llmaddr_count (struct ifnet*) ;
 struct ifnet* iflib_get_ifp (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int min (int ,int) ;

__attribute__((used)) static int
ixgbe_if_promisc_set(if_ctx_t ctx, int flags)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ifnet *ifp = iflib_get_ifp(ctx);
 u32 rctl;
 int mcnt = 0;

 rctl = IXGBE_READ_REG(&adapter->hw, IXGBE_FCTRL);
 rctl &= (~IXGBE_FCTRL_UPE);
 if (ifp->if_flags & IFF_ALLMULTI)
  mcnt = MAX_NUM_MULTICAST_ADDRESSES;
 else {
  mcnt = min(if_llmaddr_count(ifp), MAX_NUM_MULTICAST_ADDRESSES);
 }
 if (mcnt < MAX_NUM_MULTICAST_ADDRESSES)
  rctl &= (~IXGBE_FCTRL_MPE);
 IXGBE_WRITE_REG(&adapter->hw, IXGBE_FCTRL, rctl);

 if (ifp->if_flags & IFF_PROMISC) {
  rctl |= (IXGBE_FCTRL_UPE | IXGBE_FCTRL_MPE);
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_FCTRL, rctl);
 } else if (ifp->if_flags & IFF_ALLMULTI) {
  rctl |= IXGBE_FCTRL_MPE;
  rctl &= ~IXGBE_FCTRL_UPE;
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_FCTRL, rctl);
 }
 return (0);
}
