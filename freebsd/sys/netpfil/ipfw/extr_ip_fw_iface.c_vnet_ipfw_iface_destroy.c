
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int * ifcfg; } ;


 struct namedobj_instance* CHAIN_TO_II (struct ip_fw_chain*) ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int destroy_iface ;
 int iface_khandler_deregister () ;
 int ipfw_objhash_destroy (struct namedobj_instance*) ;
 int ipfw_objhash_foreach (struct namedobj_instance*,int ,struct ip_fw_chain*) ;

void
vnet_ipfw_iface_destroy(struct ip_fw_chain *ch)
{
 struct namedobj_instance *ii;

 IPFW_UH_WLOCK(ch);
 ii = CHAIN_TO_II(ch);
 ch->ifcfg = ((void*)0);
 IPFW_UH_WUNLOCK(ch);

 if (ii != ((void*)0)) {
  ipfw_objhash_foreach(ii, destroy_iface, ch);
  ipfw_objhash_destroy(ii);
  iface_khandler_deregister();
 }
}
