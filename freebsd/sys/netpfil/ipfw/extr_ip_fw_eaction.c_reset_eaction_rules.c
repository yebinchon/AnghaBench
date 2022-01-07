
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct named_object {scalar_t__ kidx; int refcnt; } ;
struct ip_fw_chain {int n_rules; int * map; } ;


 int CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int EACTION_DEBUG (char*,scalar_t__,scalar_t__) ;
 int IPFW_TLV_EACTION ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int IPFW_WLOCK (struct ip_fw_chain*) ;
 int IPFW_WUNLOCK (struct ip_fw_chain*) ;
 int default_eaction_typename ;
 int ipfw_dyn_reset_eaction (struct ip_fw_chain*,scalar_t__,scalar_t__,scalar_t__) ;
 struct named_object* ipfw_objhash_lookup_name_type (int ,int ,int ,int ) ;
 scalar_t__ ipfw_reset_eaction (struct ip_fw_chain*,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int panic (char*) ;

__attribute__((used)) static void
reset_eaction_rules(struct ip_fw_chain *ch, uint16_t eaction_id,
    uint16_t instance_id, bool reset_rules)
{
 struct named_object *no;
 int i;

 IPFW_UH_WLOCK_ASSERT(ch);

 no = ipfw_objhash_lookup_name_type(CHAIN_TO_SRV(ch), 0,
     IPFW_TLV_EACTION, default_eaction_typename);
 if (no == ((void*)0))
  panic("Default external action handler is not found");
 if (eaction_id == no->kidx)
  panic("Wrong eaction_id");

 EACTION_DEBUG("Going to replace id %u with %u", eaction_id, no->kidx);
 IPFW_WLOCK(ch);




 if (reset_rules) {
  for (i = 0; i < ch->n_rules; i++) {






   if (ipfw_reset_eaction(ch, ch->map[i], eaction_id,
       no->kidx, instance_id) != 0)
    no->refcnt++;
  }
 }





 ipfw_dyn_reset_eaction(ch, eaction_id, no->kidx, instance_id);
 IPFW_WUNLOCK(ch);
}
