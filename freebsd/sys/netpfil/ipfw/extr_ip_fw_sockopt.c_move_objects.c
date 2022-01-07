
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct opcode_obj_rewrite {int (* manage_sets ) (struct ip_fw_chain*,int ,int,int ) ;} ;
struct ip_fw_chain {int n_rules; struct ip_fw** map; } ;
struct ip_fw {scalar_t__ set; int cmd_len; int * cmd; } ;
struct TYPE_4__ {scalar_t__ new_set; } ;
typedef TYPE_1__ ipfw_range_tlv ;
typedef int ipfw_insn ;


 int COUNT_ONE ;
 int F_LEN (int *) ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int MOVE_ONE ;
 int TEST_ONE ;
 struct opcode_obj_rewrite* find_op_rw (int *,int *,int *) ;
 scalar_t__ ipfw_match_range (struct ip_fw*,TYPE_1__*) ;
 int stub1 (struct ip_fw_chain*,int ,int,int ) ;
 int stub2 (struct ip_fw_chain*,int ,int,int ) ;
 int stub3 (struct ip_fw_chain*,int ,int,int ) ;
 int stub4 (struct ip_fw_chain*,int ,int,int ) ;

__attribute__((used)) static int
move_objects(struct ip_fw_chain *ch, ipfw_range_tlv *rt)
{
 struct opcode_obj_rewrite *rw;
 struct ip_fw *rule;
 ipfw_insn *cmd;
 int cmdlen, i, l, c;
 uint16_t kidx;

 IPFW_UH_WLOCK_ASSERT(ch);


 for (c = 0, i = 0; i < ch->n_rules - 1; i++) {
  rule = ch->map[i];
  if (ipfw_match_range(rule, rt) == 0)
   continue;
  if (rule->set == rt->new_set)
   continue;

  for (l = rule->cmd_len, cmdlen = 0, cmd = rule->cmd;
      l > 0; l -= cmdlen, cmd += cmdlen) {
   cmdlen = F_LEN(cmd);
   rw = find_op_rw(cmd, &kidx, ((void*)0));
   if (rw == ((void*)0) || rw->manage_sets == ((void*)0))
    continue;






   if (rw->manage_sets(ch, kidx, 1, COUNT_ONE) != 0)
    continue;
   c++;
  }
 }
 if (c == 0)
  return (0);

 for (c = 0, i = 0; (i < ch->n_rules - 1) && c == 0; i++) {
  rule = ch->map[i];
  if (ipfw_match_range(rule, rt) == 0)
   continue;
  if (rule->set == rt->new_set)
   continue;

  for (l = rule->cmd_len, cmdlen = 0, cmd = rule->cmd;
      l > 0 && c == 0; l -= cmdlen, cmd += cmdlen) {
   cmdlen = F_LEN(cmd);
   rw = find_op_rw(cmd, &kidx, ((void*)0));
   if (rw == ((void*)0) || rw->manage_sets == ((void*)0))
    continue;

   c = rw->manage_sets(ch, kidx,
       (uint8_t)rt->new_set, TEST_ONE);
  }
 }

 for (i = 0; i < ch->n_rules - 1; i++) {
  rule = ch->map[i];
  if (ipfw_match_range(rule, rt) == 0)
   continue;
  if (rule->set == rt->new_set)
   continue;

  for (l = rule->cmd_len, cmdlen = 0, cmd = rule->cmd;
      l > 0; l -= cmdlen, cmd += cmdlen) {
   cmdlen = F_LEN(cmd);
   rw = find_op_rw(cmd, &kidx, ((void*)0));
   if (rw == ((void*)0) || rw->manage_sets == ((void*)0))
    continue;

   rw->manage_sets(ch, kidx,
       0 , COUNT_ONE);
   if (c != 0)
    continue;

   rw->manage_sets(ch, kidx,
       (uint8_t)rt->new_set, MOVE_ONE);
  }
 }
 return (c);
}
