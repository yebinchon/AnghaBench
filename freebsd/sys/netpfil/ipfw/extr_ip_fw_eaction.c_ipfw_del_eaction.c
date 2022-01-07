
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct named_object {scalar_t__ etlv; int refcnt; int name; } ;
struct ip_fw_chain {int dummy; } ;


 int CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int EACTION_DEBUG (char*,int ,int ) ;
 int EINVAL ;
 scalar_t__ IPFW_TLV_EACTION ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int destroy_eaction_obj (struct ip_fw_chain*,struct named_object*) ;
 struct named_object* ipfw_objhash_lookup_kidx (int ,int ) ;
 int reset_eaction_rules (struct ip_fw_chain*,int ,int ,int) ;

int
ipfw_del_eaction(struct ip_fw_chain *ch, uint16_t eaction_id)
{
 struct named_object *no;

 IPFW_UH_WLOCK(ch);
 no = ipfw_objhash_lookup_kidx(CHAIN_TO_SRV(ch), eaction_id);
 if (no == ((void*)0) || no->etlv != IPFW_TLV_EACTION) {
  IPFW_UH_WUNLOCK(ch);
  return (EINVAL);
 }
 reset_eaction_rules(ch, eaction_id, 0, (no->refcnt > 1));
 EACTION_DEBUG("External action '%s' with id %u unregistered",
     no->name, eaction_id);
 destroy_eaction_obj(ch, no);
 IPFW_UH_WUNLOCK(ch);
 return (0);
}
