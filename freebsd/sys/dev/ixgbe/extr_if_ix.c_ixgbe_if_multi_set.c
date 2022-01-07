
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u8 ;
typedef int u32 ;
struct ixgbe_mc_addr {int dummy; } ;
struct ifnet {int if_flags; } ;
struct adapter {int hw; struct ixgbe_mc_addr* mta; } ;
typedef int if_ctx_t ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int IOCTL_DEBUGOUT (char*) ;
 int IXGBE_FCTRL ;
 int IXGBE_FCTRL_MPE ;
 int IXGBE_FCTRL_UPE ;
 int IXGBE_READ_REG (int *,int ) ;
 int IXGBE_WRITE_REG (int *,int ,int) ;
 int MAX_NUM_MULTICAST_ADDRESSES ;
 int TRUE ;
 int bzero (struct ixgbe_mc_addr*,int) ;
 int if_foreach_llmaddr (struct ifnet*,int ,struct adapter*) ;
 struct ifnet* iflib_get_ifp (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int ixgbe_mc_array_itr ;
 int ixgbe_mc_filter_apply ;
 int ixgbe_update_mc_addr_list (int *,int *,int,int ,int ) ;

__attribute__((used)) static void
ixgbe_if_multi_set(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ixgbe_mc_addr *mta;
 struct ifnet *ifp = iflib_get_ifp(ctx);
 u8 *update_ptr;
 u32 fctrl;
 u_int mcnt;

 IOCTL_DEBUGOUT("ixgbe_if_multi_set: begin");

 mta = adapter->mta;
 bzero(mta, sizeof(*mta) * MAX_NUM_MULTICAST_ADDRESSES);

 mcnt = if_foreach_llmaddr(iflib_get_ifp(ctx), ixgbe_mc_filter_apply,
     adapter);

 fctrl = IXGBE_READ_REG(&adapter->hw, IXGBE_FCTRL);
 fctrl |= (IXGBE_FCTRL_UPE | IXGBE_FCTRL_MPE);
 if (ifp->if_flags & IFF_PROMISC)
  fctrl |= (IXGBE_FCTRL_UPE | IXGBE_FCTRL_MPE);
 else if (mcnt >= MAX_NUM_MULTICAST_ADDRESSES ||
     ifp->if_flags & IFF_ALLMULTI) {
  fctrl |= IXGBE_FCTRL_MPE;
  fctrl &= ~IXGBE_FCTRL_UPE;
 } else
  fctrl &= ~(IXGBE_FCTRL_UPE | IXGBE_FCTRL_MPE);

 IXGBE_WRITE_REG(&adapter->hw, IXGBE_FCTRL, fctrl);

 if (mcnt < MAX_NUM_MULTICAST_ADDRESSES) {
  update_ptr = (u8 *)mta;
  ixgbe_update_mc_addr_list(&adapter->hw, update_ptr, mcnt,
      ixgbe_mc_array_itr, TRUE);
 }

}
