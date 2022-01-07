
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct opcode_obj_rewrite {scalar_t__ opcode; scalar_t__ (* classifier ) (TYPE_1__*,scalar_t__*,int *) ;} ;
struct namedobj_instance {int dummy; } ;
struct named_object {scalar_t__ set; } ;
struct ip_fw_chain {int n_rules; struct ip_fw** map; } ;
struct ip_fw {int cmd_len; scalar_t__ set; TYPE_1__* cmd; } ;
struct TYPE_4__ {scalar_t__ opcode; } ;
typedef TYPE_1__ ipfw_insn ;


 struct namedobj_instance* CHAIN_TO_NI (struct ip_fw_chain*) ;
 int EBUSY ;
 int F_LEN (TYPE_1__*) ;
 int IPFW_TLV_TBL_NAME ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 unsigned int V_fw_tables_sets ;
 scalar_t__ ipfw_objhash_foreach_type (struct namedobj_instance*,int ,int *,int ) ;
 struct named_object* ipfw_objhash_lookup_kidx (struct namedobj_instance*,scalar_t__) ;
 int nitems (struct opcode_obj_rewrite*) ;
 struct opcode_obj_rewrite* opcodes ;
 scalar_t__ stub1 (TYPE_1__*,scalar_t__*,int *) ;
 int test_sets_cb ;

int
ipfw_switch_tables_namespace(struct ip_fw_chain *ch, unsigned int sets)
{
 struct opcode_obj_rewrite *rw;
 struct namedobj_instance *ni;
 struct named_object *no;
 struct ip_fw *rule;
 ipfw_insn *cmd;
 int cmdlen, i, l;
 uint16_t kidx;
 uint8_t subtype;

 IPFW_UH_WLOCK(ch);

 if (V_fw_tables_sets == sets) {
  IPFW_UH_WUNLOCK(ch);
  return (0);
 }
 ni = CHAIN_TO_NI(ch);
 if (sets == 0) {




  if (ipfw_objhash_foreach_type(ni, test_sets_cb,
      ((void*)0), IPFW_TLV_TBL_NAME) != 0) {
   IPFW_UH_WUNLOCK(ch);
   return (EBUSY);
  }
 }



 for (i = 0; i < ch->n_rules; i++) {
  rule = ch->map[i];

  l = rule->cmd_len;
  cmd = rule->cmd;
  cmdlen = 0;
  for ( ; l > 0 ; l -= cmdlen, cmd += cmdlen) {
   cmdlen = F_LEN(cmd);

   for (kidx = 0, rw = opcodes;
       rw < opcodes + nitems(opcodes); rw++) {
    if (rw->opcode != cmd->opcode)
     continue;
    if (rw->classifier(cmd, &kidx, &subtype) == 0)
     break;
   }
   if (kidx == 0)
    continue;
   no = ipfw_objhash_lookup_kidx(ni, kidx);

   if (no->set != 0 || rule->set != 0) {
    IPFW_UH_WUNLOCK(ch);
    return (EBUSY);
   }

  }
 }
 V_fw_tables_sets = sets;
 IPFW_UH_WUNLOCK(ch);
 return (0);
}
