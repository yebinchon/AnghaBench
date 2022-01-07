
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int n_rules; int * map; } ;
struct ip_fw {int dummy; } ;


 int IPFW_LOCK_DESTROY (struct ip_fw_chain*) ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int IPFW_WLOCK (struct ip_fw_chain*) ;
 int IPFW_WUNLOCK (struct ip_fw_chain*) ;
 scalar_t__ IS_DEFAULT_VNET (int ) ;
 int M_IPFW ;
 int * V_ip_fw_ctl_ptr ;
 scalar_t__ V_ipfw_vnet_ready ;
 struct ip_fw_chain V_layer3_chain ;
 int curvnet ;
 int free (int *,int ) ;
 int ipfw_bpf_uninit (int) ;
 int ipfw_destroy_counters () ;
 int ipfw_destroy_skipto_cache (struct ip_fw_chain*) ;
 int ipfw_destroy_srv (struct ip_fw_chain*) ;
 int ipfw_destroy_tables (struct ip_fw_chain*,int) ;
 int ipfw_detach_hooks () ;
 int ipfw_dyn_uninit (int) ;
 int ipfw_eaction_uninit (struct ip_fw_chain*,int) ;
 int ipfw_reap_add (struct ip_fw_chain*,struct ip_fw**,int ) ;
 int ipfw_reap_rules (struct ip_fw*) ;
 int vnet_ipfw_iface_destroy (struct ip_fw_chain*) ;

__attribute__((used)) static int
vnet_ipfw_uninit(const void *unused)
{
 struct ip_fw *reap;
 struct ip_fw_chain *chain = &V_layer3_chain;
 int i, last;

 V_ipfw_vnet_ready = 0;





 ipfw_detach_hooks();
 V_ip_fw_ctl_ptr = ((void*)0);

 last = IS_DEFAULT_VNET(curvnet) ? 1 : 0;

 IPFW_UH_WLOCK(chain);
 IPFW_UH_WUNLOCK(chain);

 ipfw_dyn_uninit(0);

 IPFW_UH_WLOCK(chain);

 reap = ((void*)0);
 IPFW_WLOCK(chain);
 for (i = 0; i < chain->n_rules; i++)
  ipfw_reap_add(chain, &reap, chain->map[i]);
 free(chain->map, M_IPFW);



 IPFW_WUNLOCK(chain);
 IPFW_UH_WUNLOCK(chain);
 ipfw_destroy_tables(chain, last);
 ipfw_eaction_uninit(chain, last);
 if (reap != ((void*)0))
  ipfw_reap_rules(reap);
 vnet_ipfw_iface_destroy(chain);
 ipfw_destroy_srv(chain);
 IPFW_LOCK_DESTROY(chain);
 ipfw_dyn_uninit(1);
 ipfw_destroy_counters();
 ipfw_bpf_uninit(last);
 return (0);
}
