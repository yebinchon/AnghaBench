
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ifnet {int dummy; } ;
struct adapter {int hw; } ;
typedef int if_ctx_t ;


 int E1000_RCTL ;
 int E1000_RCTL_MPE ;
 int E1000_RCTL_SBP ;
 int E1000_RCTL_UPE ;
 int E1000_READ_REG (int *,int ) ;
 int E1000_WRITE_REG (int *,int ,int ) ;
 int IFF_ALLMULTI ;
 int MAX_NUM_MULTICAST_ADDRESSES ;
 int if_getflags (struct ifnet*) ;
 int if_llmaddr_count (struct ifnet*) ;
 struct ifnet* iflib_get_ifp (int ) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static void
em_disable_promisc(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ifnet *ifp = iflib_get_ifp(ctx);
 u32 reg_rctl;
 int mcnt = 0;

 reg_rctl = E1000_READ_REG(&adapter->hw, E1000_RCTL);
 reg_rctl &= (~E1000_RCTL_UPE);
 if (if_getflags(ifp) & IFF_ALLMULTI)
  mcnt = MAX_NUM_MULTICAST_ADDRESSES;
 else
  mcnt = if_llmaddr_count(ifp);

 if (mcnt < MAX_NUM_MULTICAST_ADDRESSES)
  reg_rctl &= (~E1000_RCTL_MPE);
 reg_rctl &= (~E1000_RCTL_SBP);
 E1000_WRITE_REG(&adapter->hw, E1000_RCTL, reg_rctl);
}
