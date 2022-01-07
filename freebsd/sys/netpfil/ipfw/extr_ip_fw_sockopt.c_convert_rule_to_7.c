
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ip_fw_rule0 {int cmd_len; scalar_t__ opcode; struct ip_fw_rule0* cmd; int timestamp; int bcnt; int pcnt; scalar_t__ next_rule; int act_ofs; int rulenum; int set; } ;
struct ip_fw7 {int cmd_len; struct ip_fw_rule0* cmd; int timestamp; int bcnt; int pcnt; struct ip_fw7* next_rule; int act_ofs; int rulenum; int set; } ;
typedef struct ip_fw_rule0 ipfw_insn ;


 int EINVAL ;
 int F_LEN (struct ip_fw_rule0*) ;
 int M_NOWAIT ;
 int M_TEMP ;
 int M_ZERO ;
 scalar_t__ O_NAT ;
 int RULE_MAXSIZE ;
 int bcopy (struct ip_fw_rule0*,struct ip_fw_rule0*,int) ;
 int free (struct ip_fw_rule0*,int ) ;
 struct ip_fw_rule0* malloc (int,int ,int) ;
 int printf (char*,scalar_t__) ;

__attribute__((used)) static int
convert_rule_to_7(struct ip_fw_rule0 *rule)
{

 struct ip_fw7 *rule7 = (struct ip_fw7 *)rule;

 struct ip_fw_rule0 *tmp;


 ipfw_insn *ccmd, *dst;
 int ll = 0, ccmdlen = 0;

 tmp = malloc(RULE_MAXSIZE, M_TEMP, M_NOWAIT | M_ZERO);
 if (tmp == ((void*)0)) {
  return 1;
 }
 bcopy(rule, tmp, RULE_MAXSIZE);



 rule7->set = tmp->set;
 rule7->rulenum = tmp->rulenum;
 rule7->cmd_len = tmp->cmd_len;
 rule7->act_ofs = tmp->act_ofs;
 rule7->next_rule = (struct ip_fw7 *)tmp->next_rule;
 rule7->cmd_len = tmp->cmd_len;
 rule7->pcnt = tmp->pcnt;
 rule7->bcnt = tmp->bcnt;
 rule7->timestamp = tmp->timestamp;


 for (ll = tmp->cmd_len, ccmd = tmp->cmd, dst = rule7->cmd ;
   ll > 0 ; ll -= ccmdlen, ccmd += ccmdlen, dst += ccmdlen) {
  ccmdlen = F_LEN(ccmd);

  bcopy(ccmd, dst, F_LEN(ccmd)*sizeof(uint32_t));

  if (dst->opcode > O_NAT)



   dst->opcode--;

  if (ccmdlen > ll) {
   printf("ipfw: opcode %d size truncated\n",
    ccmd->opcode);
   return EINVAL;
  }
 }
 free(tmp, M_TEMP);

 return 0;
}
