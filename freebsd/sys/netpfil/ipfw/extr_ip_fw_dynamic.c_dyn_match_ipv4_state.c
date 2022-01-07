
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ip_fw_chain {int dummy; } ;
struct ip_fw {int set; } ;
struct dyn_ipv4_state {scalar_t__ type; int kidx; TYPE_2__* data; TYPE_1__* limit; } ;
typedef int ipfw_range_tlv ;
struct TYPE_4__ {int rulenum; struct ip_fw* parent; } ;
struct TYPE_3__ {struct ip_fw* parent; int rulenum; } ;


 scalar_t__ O_LIMIT ;
 scalar_t__ O_LIMIT_PARENT ;
 scalar_t__ V_dyn_keep_states ;
 int dyn_acquire_rule (struct ip_fw_chain*,TYPE_2__*,struct ip_fw*,int ) ;
 int dyn_match_range (int ,int ,int const*) ;

__attribute__((used)) static int
dyn_match_ipv4_state(struct ip_fw_chain *ch, struct dyn_ipv4_state *s,
    const ipfw_range_tlv *rt)
{
 struct ip_fw *rule;
 int ret;

 if (s->type == O_LIMIT_PARENT) {
  rule = s->limit->parent;
  return (dyn_match_range(s->limit->rulenum, rule->set, rt));
 }

 rule = s->data->parent;
 if (s->type == O_LIMIT)
  rule = ((struct dyn_ipv4_state *)rule)->limit->parent;

 ret = dyn_match_range(s->data->rulenum, rule->set, rt);
 if (ret == 0 || V_dyn_keep_states == 0 || ret > 1)
  return (ret);

 dyn_acquire_rule(ch, s->data, rule, s->kidx);
 return (0);
}
