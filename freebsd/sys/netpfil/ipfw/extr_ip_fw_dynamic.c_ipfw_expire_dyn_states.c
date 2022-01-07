
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int dummy; } ;
typedef int ipfw_range_tlv ;


 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 scalar_t__ V_dyn_count ;
 int dyn_expire_states (struct ip_fw_chain*,int *) ;

void
ipfw_expire_dyn_states(struct ip_fw_chain *chain, ipfw_range_tlv *rt)
{



 if (V_dyn_count == 0)
  return;

 IPFW_UH_WLOCK_ASSERT(chain);
 dyn_expire_states(chain, rt);
}
