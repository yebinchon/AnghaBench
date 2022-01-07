
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct ip_fw_rule0 {int cmd_len; int _pad; TYPE_4__* cmd; int pcnt; int set; int rulenum; int act_ofs; } ;
struct ip_fw_bcounter0 {int dummy; } ;
struct ip_fw {int cmd_len; int flags; int cmd; int set; int rulenum; int act_ofs; } ;
struct TYPE_8__ {int conn_limit; } ;
typedef TYPE_2__ ipfw_insn_limit ;
struct TYPE_7__ {int kidx; int glob; } ;
struct TYPE_9__ {char* name; TYPE_1__ p; } ;
typedef TYPE_3__ ipfw_insn_if ;
struct TYPE_10__ {int opcode; int arg1; } ;
typedef TYPE_4__ ipfw_insn ;


 int F_LEN (TYPE_4__*) ;
 int IPFW_RULE_NOOPT ;
 int IP_FW_NAT44_GLOBAL ;
 void* IP_FW_TABLEARG ;
 int IP_FW_TARG ;
 int export_cntr0_base (struct ip_fw*,struct ip_fw_bcounter0*) ;
 int memcpy (TYPE_4__*,int ,int) ;
 int memset (struct ip_fw_rule0*,int ,int) ;

__attribute__((used)) static void
export_rule0(struct ip_fw *krule, struct ip_fw_rule0 *urule, int len)
{
 int cmdlen, l;
 ipfw_insn *cmd;
 ipfw_insn_limit *lcmd;
 ipfw_insn_if *cmdif;


 memset(urule, 0, len);
 urule->act_ofs = krule->act_ofs;
 urule->cmd_len = krule->cmd_len;
 urule->rulenum = krule->rulenum;
 urule->set = krule->set;
 if ((krule->flags & IPFW_RULE_NOOPT) != 0)
  urule->_pad |= 1;


 memcpy(urule->cmd, krule->cmd, krule->cmd_len * sizeof(uint32_t));


 export_cntr0_base(krule, (struct ip_fw_bcounter0 *)&urule->pcnt);







 l = urule->cmd_len;
 cmd = urule->cmd;
 cmdlen = 0;

 for ( ; l > 0 ; l -= cmdlen, cmd += cmdlen) {
  cmdlen = F_LEN(cmd);

  switch (cmd->opcode) {

  case 132:
  case 131:
  case 138:
  case 137:
  case 143:
  case 130:
  case 133:
  case 144:
  case 140:
  case 139:
  case 141:
   if (cmd->arg1 == IP_FW_TARG)
    cmd->arg1 = IP_FW_TABLEARG;
   else if (cmd->arg1 == IP_FW_NAT44_GLOBAL)
    cmd->arg1 = 0;
   break;
  case 134:
  case 135:
   if (cmd->arg1 == IP_FW_TARG)
    cmd->arg1 = IP_FW_TABLEARG;
   else
    cmd->arg1 &= ~0x8000;
   break;
  case 142:
   lcmd = (ipfw_insn_limit *)cmd;
   if (lcmd->conn_limit == IP_FW_TARG)
    lcmd->conn_limit = IP_FW_TABLEARG;
   break;

  case 128:
  case 136:
  case 129:

   cmdif = (ipfw_insn_if *)cmd;
   if (cmdif->name[0] != '\1')
    break;

   cmdif->p.glob = cmdif->p.kidx;
   break;
  }
 }
}
