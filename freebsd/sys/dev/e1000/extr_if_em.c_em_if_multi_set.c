
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ifnet {int dummy; } ;
struct TYPE_9__ {int pci_cmd_word; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_10__ {scalar_t__ revision_id; TYPE_2__ bus; TYPE_1__ mac; } ;
struct adapter {TYPE_3__ hw; int * mta; } ;
typedef int if_ctx_t ;


 int CMD_MEM_WRT_INVALIDATE ;
 int E1000_RCTL ;
 int E1000_RCTL_MPE ;
 int E1000_RCTL_RST ;
 int E1000_READ_REG (TYPE_3__*,int ) ;
 scalar_t__ E1000_REVISION_2 ;
 int E1000_WRITE_REG (TYPE_3__*,int ,int ) ;
 int ETHER_ADDR_LEN ;
 int IOCTL_DEBUGOUT (char*) ;
 int MAX_NUM_MULTICAST_ADDRESSES ;
 int bzero (int *,int) ;
 scalar_t__ e1000_82542 ;
 int e1000_pci_clear_mwi (TYPE_3__*) ;
 int e1000_pci_set_mwi (TYPE_3__*) ;
 int e1000_update_mc_addr_list (TYPE_3__*,int *,int) ;
 int em_copy_maddr ;
 int if_foreach_llmaddr (struct ifnet*,int ,int *) ;
 struct ifnet* iflib_get_ifp (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int msec_delay (int) ;

__attribute__((used)) static void
em_if_multi_set(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ifnet *ifp = iflib_get_ifp(ctx);
 u32 reg_rctl = 0;
 u8 *mta;
 int mcnt = 0;

 IOCTL_DEBUGOUT("em_set_multi: begin");

 mta = adapter->mta;
 bzero(mta, sizeof(u8) * ETHER_ADDR_LEN * MAX_NUM_MULTICAST_ADDRESSES);

 if (adapter->hw.mac.type == e1000_82542 &&
     adapter->hw.revision_id == E1000_REVISION_2) {
  reg_rctl = E1000_READ_REG(&adapter->hw, E1000_RCTL);
  if (adapter->hw.bus.pci_cmd_word & CMD_MEM_WRT_INVALIDATE)
   e1000_pci_clear_mwi(&adapter->hw);
  reg_rctl |= E1000_RCTL_RST;
  E1000_WRITE_REG(&adapter->hw, E1000_RCTL, reg_rctl);
  msec_delay(5);
 }

 mcnt = if_foreach_llmaddr(ifp, em_copy_maddr, mta);

 if (mcnt >= MAX_NUM_MULTICAST_ADDRESSES) {
  reg_rctl = E1000_READ_REG(&adapter->hw, E1000_RCTL);
  reg_rctl |= E1000_RCTL_MPE;
  E1000_WRITE_REG(&adapter->hw, E1000_RCTL, reg_rctl);
 } else
  e1000_update_mc_addr_list(&adapter->hw, mta, mcnt);

 if (adapter->hw.mac.type == e1000_82542 &&
     adapter->hw.revision_id == E1000_REVISION_2) {
  reg_rctl = E1000_READ_REG(&adapter->hw, E1000_RCTL);
  reg_rctl &= ~E1000_RCTL_RST;
  E1000_WRITE_REG(&adapter->hw, E1000_RCTL, reg_rctl);
  msec_delay(5);
  if (adapter->hw.bus.pci_cmd_word & CMD_MEM_WRT_INVALIDATE)
   e1000_pci_set_mwi(&adapter->hw);
 }
}
