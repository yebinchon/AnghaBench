
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {scalar_t__ if_mtu; } ;
struct adapter {int media; int hw; int phy_layer; scalar_t__ max_frame_size; } ;
typedef int if_ctx_t ;


 scalar_t__ ETHER_CRC_LEN ;
 scalar_t__ ETHER_HDR_LEN ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IF_Gbps (int) ;
 int INIT_DEBUGOUT (char*) ;
 int if_setbaudrate (struct ifnet*,int ) ;
 struct ifnet* iflib_get_ifp (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int ifmedia_set (int ,int) ;
 int ixgbe_add_media_types (int ) ;
 int ixgbe_get_supported_physical_layer (int *) ;

__attribute__((used)) static int
ixgbe_setup_interface(if_ctx_t ctx)
{
 struct ifnet *ifp = iflib_get_ifp(ctx);
 struct adapter *adapter = iflib_get_softc(ctx);

 INIT_DEBUGOUT("ixgbe_setup_interface: begin");

 if_setbaudrate(ifp, IF_Gbps(10));

 adapter->max_frame_size = ifp->if_mtu + ETHER_HDR_LEN + ETHER_CRC_LEN;

 adapter->phy_layer = ixgbe_get_supported_physical_layer(&adapter->hw);

 ixgbe_add_media_types(ctx);


 ifmedia_set(adapter->media, IFM_ETHER | IFM_AUTO);

 return (0);
}
