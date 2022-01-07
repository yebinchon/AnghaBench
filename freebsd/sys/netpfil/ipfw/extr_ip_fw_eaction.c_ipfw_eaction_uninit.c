
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namedobj_instance {int dummy; } ;
struct named_object {int dummy; } ;
struct ip_fw_chain {int dummy; } ;


 struct namedobj_instance* CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int EACTION_DEBUG (char*) ;
 int IPFW_DEL_OBJ_REWRITER (int,int ) ;
 int IPFW_TLV_EACTION ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int default_eaction_typename ;
 int destroy_eaction_obj (struct ip_fw_chain*,struct named_object*) ;
 int eaction_opcodes ;
 struct named_object* ipfw_objhash_lookup_name_type (struct namedobj_instance*,int ,int ,int ) ;

void
ipfw_eaction_uninit(struct ip_fw_chain *ch, int last)
{
 struct namedobj_instance *ni;
 struct named_object *no;

 ni = CHAIN_TO_SRV(ch);

 IPFW_UH_WLOCK(ch);
 no = ipfw_objhash_lookup_name_type(ni, 0, IPFW_TLV_EACTION,
     default_eaction_typename);
 if (no != ((void*)0))
  destroy_eaction_obj(ch, no);
 IPFW_UH_WUNLOCK(ch);
 IPFW_DEL_OBJ_REWRITER(last, eaction_opcodes);
 EACTION_DEBUG("External actions support uninitialized");
}
