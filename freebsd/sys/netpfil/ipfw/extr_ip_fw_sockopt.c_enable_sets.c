
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_3__ {int set; int new_set; } ;
typedef TYPE_1__ ipfw_range_tlv ;


 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int IPFW_WLOCK (struct ip_fw_chain*) ;
 int IPFW_WUNLOCK (struct ip_fw_chain*) ;
 int RESVD_SET ;
 int V_set_disable ;

__attribute__((used)) static void
enable_sets(struct ip_fw_chain *chain, ipfw_range_tlv *rt)
{
 uint32_t v_set;

 IPFW_UH_WLOCK_ASSERT(chain);


 v_set = (V_set_disable | rt->set) & ~rt->new_set;
 v_set &= ~(1 << RESVD_SET);
 IPFW_WLOCK(chain);
 V_set_disable = v_set;
 IPFW_WUNLOCK(chain);
}
