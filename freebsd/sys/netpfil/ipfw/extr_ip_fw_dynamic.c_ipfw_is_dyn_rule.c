
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ip_fw {int cmd_len; TYPE_1__* cmd; } ;
struct TYPE_3__ {int opcode; } ;
typedef TYPE_1__ ipfw_insn ;


 int F_LEN (TYPE_1__*) ;





int
ipfw_is_dyn_rule(struct ip_fw *rule)
{
 int cmdlen, l;
 ipfw_insn *cmd;

 l = rule->cmd_len;
 cmd = rule->cmd;
 cmdlen = 0;
 for ( ; l > 0 ; l -= cmdlen, cmd += cmdlen) {
  cmdlen = F_LEN(cmd);

  switch (cmd->opcode) {
  case 129:
  case 130:
  case 128:
  case 131:
   return (1);
  }
 }

 return (0);
}
