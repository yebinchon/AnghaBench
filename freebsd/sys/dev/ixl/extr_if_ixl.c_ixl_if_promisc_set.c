
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_vsi {int seid; struct i40e_hw* hw; } ;
struct ixl_pf {struct ixl_vsi vsi; } ;
struct ifnet {int dummy; } ;
struct i40e_hw {int dummy; } ;
typedef int if_ctx_t ;


 int FALSE ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 scalar_t__ MAX_MULTICAST_ADDR ;
 int TRUE ;
 int i40e_aq_set_vsi_multicast_promiscuous (struct i40e_hw*,int ,int,int *) ;
 int i40e_aq_set_vsi_unicast_promiscuous (struct i40e_hw*,int ,int,int *,int) ;
 scalar_t__ if_llmaddr_count (struct ifnet*) ;
 struct ifnet* iflib_get_ifp (int ) ;
 struct ixl_pf* iflib_get_softc (int ) ;

__attribute__((used)) static int
ixl_if_promisc_set(if_ctx_t ctx, int flags)
{
 struct ixl_pf *pf = iflib_get_softc(ctx);
 struct ixl_vsi *vsi = &pf->vsi;
 struct ifnet *ifp = iflib_get_ifp(ctx);
 struct i40e_hw *hw = vsi->hw;
 int err;
 bool uni = FALSE, multi = FALSE;

 if (flags & IFF_PROMISC)
  uni = multi = TRUE;
 else if (flags & IFF_ALLMULTI || if_llmaddr_count(ifp) >=
     MAX_MULTICAST_ADDR)
  multi = TRUE;

 err = i40e_aq_set_vsi_unicast_promiscuous(hw,
     vsi->seid, uni, ((void*)0), 1);
 if (err)
  return (err);
 err = i40e_aq_set_vsi_multicast_promiscuous(hw,
     vsi->seid, multi, ((void*)0));
 return (err);
}
