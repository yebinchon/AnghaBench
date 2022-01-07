
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct named_object {int dummy; } ;
struct ip_fw_chain {int dummy; } ;


 int CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int EACTION_DEBUG (char*,int ) ;
 struct named_object* ipfw_objhash_lookup_kidx (int ,int ) ;

__attribute__((used)) static struct named_object *
eaction_findbykidx(struct ip_fw_chain *ch, uint16_t idx)
{

 EACTION_DEBUG("kidx %u", idx);
 return (ipfw_objhash_lookup_kidx(CHAIN_TO_SRV(ch), idx));
}
