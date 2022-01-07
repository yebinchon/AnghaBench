
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_vsi {int seid; struct i40e_hw* hw; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;
struct i40e_hw {int dummy; } ;


 int IOCTL_DEBUGOUT (char*) ;
 int IXL_FILTER_ADD ;
 int IXL_FILTER_MC ;
 int IXL_FILTER_USED ;
 int MAX_MULTICAST_ADDR ;
 int TRUE ;
 scalar_t__ __predict_false (int) ;
 int i40e_aq_set_vsi_multicast_promiscuous (struct i40e_hw*,int ,int ,int *) ;
 int if_foreach_llmaddr (struct ifnet*,int ,struct ixl_vsi*) ;
 int if_llmaddr_count (struct ifnet*) ;
 int ixl_add_hw_filters (struct ixl_vsi*,int,int) ;
 int ixl_add_maddr ;
 int ixl_del_hw_filters (struct ixl_vsi*,int) ;

void
ixl_add_multi(struct ixl_vsi *vsi)
{
 struct ifnet *ifp = vsi->ifp;
 struct i40e_hw *hw = vsi->hw;
 int mcnt = 0, flags;

 IOCTL_DEBUGOUT("ixl_add_multi: begin");





 mcnt = if_llmaddr_count(ifp);
 if (__predict_false(mcnt >= MAX_MULTICAST_ADDR)) {

  ixl_del_hw_filters(vsi, mcnt);
  i40e_aq_set_vsi_multicast_promiscuous(hw,
      vsi->seid, TRUE, ((void*)0));
  return;
 }

 mcnt = if_foreach_llmaddr(ifp, ixl_add_maddr, vsi);
 if (mcnt > 0) {
  flags = (IXL_FILTER_ADD | IXL_FILTER_USED | IXL_FILTER_MC);
  ixl_add_hw_filters(vsi, flags, mcnt);
 }

 IOCTL_DEBUGOUT("ixl_add_multi: end");
}
