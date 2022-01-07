
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int hw; } ;
typedef int if_ctx_t ;


 int E1000_RCTL ;
 int E1000_RCTL_MPE ;
 int E1000_RCTL_SBP ;
 int E1000_RCTL_UPE ;
 int E1000_READ_REG (int *,int ) ;
 int E1000_WRITE_REG (int *,int ,int) ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 scalar_t__ em_debug_sbp ;
 int em_disable_promisc (int ) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static int
em_if_set_promisc(if_ctx_t ctx, int flags)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 u32 reg_rctl;

 em_disable_promisc(ctx);

 reg_rctl = E1000_READ_REG(&adapter->hw, E1000_RCTL);

 if (flags & IFF_PROMISC) {
  reg_rctl |= (E1000_RCTL_UPE | E1000_RCTL_MPE);

  if (em_debug_sbp)
   reg_rctl |= E1000_RCTL_SBP;
  E1000_WRITE_REG(&adapter->hw, E1000_RCTL, reg_rctl);
 } else if (flags & IFF_ALLMULTI) {
  reg_rctl |= E1000_RCTL_MPE;
  reg_rctl &= ~E1000_RCTL_UPE;
  E1000_WRITE_REG(&adapter->hw, E1000_RCTL, reg_rctl);
 }
 return (0);
}
