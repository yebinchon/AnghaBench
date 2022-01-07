
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rule_check_info {int dummy; } ;
struct ip_fw_rule0 {int cmd_len; int act_ofs; int rulenum; int cmd; } ;


 int EINVAL ;
 int IPFW_DEFAULT_RULE ;
 int check_ipfw_rule_body (int ,int,struct rule_check_info*) ;
 int printf (char*,...) ;

__attribute__((used)) static int
check_ipfw_rule0(struct ip_fw_rule0 *rule, int size,
    struct rule_check_info *ci)
{
 int l;

 if (size < sizeof(*rule)) {
  printf("ipfw: rule too short\n");
  return (EINVAL);
 }


 l = sizeof(*rule) + rule->cmd_len * 4 - 4;
 if (l != size) {
  printf("ipfw: size mismatch (have %d want %d)\n", size, l);
  return (EINVAL);
 }
 if (rule->act_ofs >= rule->cmd_len) {
  printf("ipfw: bogus action offset (%u > %u)\n",
      rule->act_ofs, rule->cmd_len - 1);
  return (EINVAL);
 }

 if (rule->rulenum > IPFW_DEFAULT_RULE - 1)
  return (EINVAL);

 return (check_ipfw_rule_body(rule->cmd, rule->cmd_len, ci));
}
