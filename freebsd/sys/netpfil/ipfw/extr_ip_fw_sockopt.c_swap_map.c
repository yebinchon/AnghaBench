
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int n_rules; struct ip_fw** map; int id; } ;
struct ip_fw {int dummy; } ;


 int IPFW_WLOCK (struct ip_fw_chain*) ;
 int IPFW_WUNLOCK (struct ip_fw_chain*) ;
 int swap_skipto_cache (struct ip_fw_chain*) ;

__attribute__((used)) static struct ip_fw **
swap_map(struct ip_fw_chain *chain, struct ip_fw **new_map, int new_len)
{
 struct ip_fw **old_map;

 IPFW_WLOCK(chain);
 chain->id++;
 chain->n_rules = new_len;
 old_map = chain->map;
 chain->map = new_map;
 swap_skipto_cache(chain);
 IPFW_WUNLOCK(chain);
 return old_map;
}
