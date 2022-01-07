
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {struct namedobj_instance* ifcfg; } ;


 int DEFAULT_IFACES ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int iface_khandler_register () ;
 struct namedobj_instance* ipfw_objhash_create (int ) ;
 int ipfw_objhash_destroy (struct namedobj_instance*) ;

__attribute__((used)) static void
vnet_ipfw_iface_init(struct ip_fw_chain *ch)
{
 struct namedobj_instance *ii;

 ii = ipfw_objhash_create(DEFAULT_IFACES);
 IPFW_UH_WLOCK(ch);
 if (ch->ifcfg == ((void*)0)) {
  ch->ifcfg = ii;
  ii = ((void*)0);
 }
 IPFW_UH_WUNLOCK(ch);

 if (ii != ((void*)0)) {

  ipfw_objhash_destroy(ii);
 } else {

  iface_khandler_register();
 }
}
