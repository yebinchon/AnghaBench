
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct ip_fw_chain {int dummy; } ;
struct ip_fw {int cmd_len; TYPE_1__* cmd; int rulenum; } ;
struct TYPE_4__ {scalar_t__ opcode; scalar_t__ arg1; } ;
typedef TYPE_1__ ipfw_insn ;


 int EACTION_DEBUG (char*,int ,int,int) ;
 int F_LEN (TYPE_1__*) ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int IPFW_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int MPASS (int) ;
 scalar_t__ O_EXTERNAL_ACTION ;
 scalar_t__ O_EXTERNAL_INSTANCE ;
 TYPE_1__* ipfw_get_action (struct ip_fw*) ;

int
ipfw_reset_eaction(struct ip_fw_chain *ch, struct ip_fw *rule,
    uint16_t eaction_id, uint16_t default_id, uint16_t instance_id)
{
 ipfw_insn *cmd, *icmd;
 int l;

 IPFW_UH_WLOCK_ASSERT(ch);
 IPFW_WLOCK_ASSERT(ch);





 cmd = ipfw_get_action(rule);
 if (cmd->opcode != O_EXTERNAL_ACTION ||
     cmd->arg1 != eaction_id)
  return (0);
 l = rule->cmd + rule->cmd_len - cmd;
 if (l > 1) {
  MPASS(F_LEN(cmd) == 1);
  icmd = cmd + 1;
  if (icmd->opcode == O_EXTERNAL_INSTANCE &&
      instance_id != 0 && icmd->arg1 != instance_id)
   return (0);






  EACTION_DEBUG("truncate rule %d: len %u -> %u",
      rule->rulenum, rule->cmd_len,
      rule->cmd_len - F_LEN(icmd));
  rule->cmd_len -= F_LEN(icmd);
  MPASS(((uint32_t *)icmd -
      (uint32_t *)rule->cmd) == rule->cmd_len);
 }

 cmd->arg1 = default_id;



 return (1);
}
