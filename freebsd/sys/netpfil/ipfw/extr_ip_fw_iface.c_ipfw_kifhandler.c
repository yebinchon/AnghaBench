
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namedobj_instance {int dummy; } ;
struct ipfw_iface {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct ifnet {int if_index; } ;


 struct namedobj_instance* CHAIN_TO_II (struct ip_fw_chain*) ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 scalar_t__ V_ipfw_vnet_ready ;
 struct ip_fw_chain V_layer3_chain ;
 int handle_ifattach (struct ip_fw_chain*,struct ipfw_iface*,int ) ;
 int handle_ifdetach (struct ip_fw_chain*,struct ipfw_iface*,int ) ;
 int if_name (struct ifnet*) ;
 scalar_t__ ipfw_objhash_lookup_name (struct namedobj_instance*,int ,int ) ;

__attribute__((used)) static void
ipfw_kifhandler(void *arg, struct ifnet *ifp)
{
 struct ip_fw_chain *ch;
 struct ipfw_iface *iif;
 struct namedobj_instance *ii;
 uintptr_t htype;

 if (V_ipfw_vnet_ready == 0)
  return;

 ch = &V_layer3_chain;
 htype = (uintptr_t)arg;

 IPFW_UH_WLOCK(ch);
 ii = CHAIN_TO_II(ch);
 if (ii == ((void*)0)) {
  IPFW_UH_WUNLOCK(ch);
  return;
 }
 iif = (struct ipfw_iface*)ipfw_objhash_lookup_name(ii, 0,
     if_name(ifp));
 if (iif != ((void*)0)) {
  if (htype == 1)
   handle_ifattach(ch, iif, ifp->if_index);
  else
   handle_ifdetach(ch, iif, ifp->if_index);
 }
 IPFW_UH_WUNLOCK(ch);
}
