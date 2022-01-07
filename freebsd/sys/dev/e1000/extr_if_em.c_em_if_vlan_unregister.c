
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int u16 ;
struct adapter {int* shadow_vfta; int num_vlans; } ;
typedef int if_ctx_t ;


 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static void
em_if_vlan_unregister(if_ctx_t ctx, u16 vtag)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 u32 index, bit;

 index = (vtag >> 5) & 0x7F;
 bit = vtag & 0x1F;
 adapter->shadow_vfta[index] &= ~(1 << bit);
 --adapter->num_vlans;
}
