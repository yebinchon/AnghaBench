
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct tid_info {int dummy; } ;
struct rule_check_info {scalar_t__ object_opcodes; } ;
struct obj_idx {int off; } ;
struct ip_fw_chain {int dummy; } ;
struct ip_fw {int cmd_len; int * cmd; } ;
typedef int ipfw_insn ;


 int F_LEN (int *) ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int create_objects_compat (struct ip_fw_chain*,int *,struct obj_idx*,struct obj_idx*,struct tid_info*) ;
 int ref_opcode_object (struct ip_fw_chain*,int *,struct tid_info*,struct obj_idx*,int*) ;
 int unref_oib_objects (struct ip_fw_chain*,int *,struct obj_idx*,struct obj_idx*) ;

__attribute__((used)) static int
ref_rule_objects(struct ip_fw_chain *ch, struct ip_fw *rule,
    struct rule_check_info *ci, struct obj_idx *oib, struct tid_info *ti)
{
 struct obj_idx *pidx;
 ipfw_insn *cmd;
 int cmdlen, error, l, unresolved;

 pidx = oib;
 l = rule->cmd_len;
 cmd = rule->cmd;
 cmdlen = 0;
 error = 0;

 IPFW_UH_WLOCK(ch);


 for ( ; l > 0 ; l -= cmdlen, cmd += cmdlen) {
  cmdlen = F_LEN(cmd);
  unresolved = 0;

  error = ref_opcode_object(ch, cmd, ti, pidx, &unresolved);
  if (error != 0)
   break;




  if (unresolved != 0) {
   pidx->off = rule->cmd_len - l;
   pidx++;
  }
 }

 if (error != 0) {

  unref_oib_objects(ch, rule->cmd, oib, pidx);
  IPFW_UH_WUNLOCK(ch);
  return (error);
 }
 IPFW_UH_WUNLOCK(ch);


 if (pidx != oib)
  error = create_objects_compat(ch, rule->cmd, oib, pidx, ti);


 ci->object_opcodes = (uint16_t)(pidx - oib);

 return (error);
}
