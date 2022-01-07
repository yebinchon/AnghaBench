
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct adapter {int* shadow_vfta; int num_vlans; } ;
typedef int if_ctx_t ;


 struct adapter* iflib_get_softc (int ) ;
 int ixgbe_setup_vlan_hw_support (int ) ;

__attribute__((used)) static void
ixgbe_if_vlan_register(if_ctx_t ctx, u16 vtag)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 u16 index, bit;

 index = (vtag >> 5) & 0x7F;
 bit = vtag & 0x1F;
 adapter->shadow_vfta[index] |= (1 << bit);
 ++adapter->num_vlans;
 ixgbe_setup_vlan_hw_support(ctx);
}
