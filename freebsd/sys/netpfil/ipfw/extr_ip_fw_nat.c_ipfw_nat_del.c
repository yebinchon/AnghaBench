
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {int dummy; } ;
struct ip_fw_chain {int nat; } ;
struct cfg_nat {int dummy; } ;


 int EINVAL ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int IPFW_WLOCK (struct ip_fw_chain*) ;
 int IPFW_WUNLOCK (struct ip_fw_chain*) ;
 int LIST_REMOVE (struct cfg_nat*,int ) ;
 struct ip_fw_chain V_layer3_chain ;
 int _next ;
 int flush_nat_ptrs (struct ip_fw_chain*,int) ;
 int free_nat_instance (struct cfg_nat*) ;
 struct cfg_nat* lookup_nat (int *,int) ;
 int sooptcopyin (struct sockopt*,int*,int,int) ;

__attribute__((used)) static int
ipfw_nat_del(struct sockopt *sopt)
{
 struct cfg_nat *ptr;
 struct ip_fw_chain *chain = &V_layer3_chain;
 int i;

 sooptcopyin(sopt, &i, sizeof i, sizeof i);

 IPFW_UH_WLOCK(chain);
 ptr = lookup_nat(&chain->nat, i);
 if (ptr == ((void*)0)) {
  IPFW_UH_WUNLOCK(chain);
  return (EINVAL);
 }
 IPFW_WLOCK(chain);
 LIST_REMOVE(ptr, _next);
 flush_nat_ptrs(chain, i);
 IPFW_WUNLOCK(chain);
 IPFW_UH_WUNLOCK(chain);
 free_nat_instance(ptr);
 return (0);
}
