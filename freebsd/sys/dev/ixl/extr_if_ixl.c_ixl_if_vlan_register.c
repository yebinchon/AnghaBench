
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ixl_vsi {int num_vlans; struct i40e_hw* hw; } ;
struct ixl_pf {struct ixl_vsi vsi; } ;
struct TYPE_2__ {int addr; } ;
struct i40e_hw {TYPE_1__ mac; } ;
typedef int if_ctx_t ;


 struct ixl_pf* iflib_get_softc (int ) ;
 int ixl_add_filter (struct ixl_vsi*,int ,int) ;

__attribute__((used)) static void
ixl_if_vlan_register(if_ctx_t ctx, u16 vtag)
{
 struct ixl_pf *pf = iflib_get_softc(ctx);
 struct ixl_vsi *vsi = &pf->vsi;
 struct i40e_hw *hw = vsi->hw;

 if ((vtag == 0) || (vtag > 4095))
  return;

 ++vsi->num_vlans;
 ixl_add_filter(vsi, hw->mac.addr, vtag);
}
