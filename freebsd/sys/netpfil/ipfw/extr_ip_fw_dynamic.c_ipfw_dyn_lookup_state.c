
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ipfw_dyn_info {size_t f_pos; void* direction; int hashval; int kidx; } ;
struct ip_fw_args {int f_id; } ;
struct ip_fw {scalar_t__ type; int set; TYPE_1__* limit; struct dyn_data* data; } ;
struct dyn_ipv6_state {scalar_t__ type; int set; TYPE_1__* limit; struct dyn_data* data; } ;
struct dyn_ipv4_state {scalar_t__ type; int set; TYPE_1__* limit; struct dyn_data* data; } ;
struct dyn_data {scalar_t__ chain_id; size_t f_pos; int rulenum; int ruleid; struct ip_fw* parent; } ;
struct TYPE_8__ {int arg1; } ;
typedef TYPE_2__ ipfw_insn ;
struct TYPE_9__ {scalar_t__ id; int n_rules; struct ip_fw** map; } ;
struct TYPE_7__ {struct ip_fw* parent; } ;


 int DYNSTATE_CRITICAL_ENTER () ;
 int DYNSTATE_CRITICAL_EXIT () ;
 int DYN_DEBUG (char*,struct ip_fw*,int ,int ,struct dyn_data*) ;
 int IPFW_RLOCK_ASSERT (TYPE_3__*) ;
 scalar_t__ IS_IP4_FLOW_ID (int *) ;
 scalar_t__ IS_IP6_FLOW_ID (int *) ;
 void* MATCH_NONE ;
 int MPASS (int) ;
 scalar_t__ O_LIMIT ;
 scalar_t__ V_dyn_keep_states ;
 TYPE_3__ V_layer3_chain ;
 int V_set_disable ;
 int dyn_getscopeid (struct ip_fw_args const*) ;
 struct ip_fw* dyn_lookup_ipv4_state (int *,void const*,struct ipfw_dyn_info*,int) ;
 struct ip_fw* dyn_lookup_ipv6_state (int *,int ,void const*,struct ipfw_dyn_info*,int) ;
 int hash_packet (int *) ;
 size_t ipfw_find_rule (TYPE_3__*,int ,int ) ;

struct ip_fw *
ipfw_dyn_lookup_state(const struct ip_fw_args *args, const void *ulp,
    int pktlen, const ipfw_insn *cmd, struct ipfw_dyn_info *info)
{
 struct dyn_data *data;
 struct ip_fw *rule;

 IPFW_RLOCK_ASSERT(&V_layer3_chain);

 data = ((void*)0);
 rule = ((void*)0);
 info->kidx = cmd->arg1;
 info->direction = MATCH_NONE;
 info->hashval = hash_packet(&args->f_id);

 DYNSTATE_CRITICAL_ENTER();
 if (IS_IP4_FLOW_ID(&args->f_id)) {
  struct dyn_ipv4_state *s;

  s = dyn_lookup_ipv4_state(&args->f_id, ulp, info, pktlen);
  if (s != ((void*)0)) {





   data = s->data;
   if (s->type == O_LIMIT) {
    s = data->parent;
    rule = s->limit->parent;
   } else
    rule = data->parent;
  }
 }
 if (data != ((void*)0)) {







  if (data->chain_id != V_layer3_chain.id) {
   data->f_pos = ipfw_find_rule(&V_layer3_chain,
       data->rulenum, data->ruleid);
   if (V_layer3_chain.map[data->f_pos] == rule) {
    data->chain_id = V_layer3_chain.id;
    info->f_pos = data->f_pos;
   } else if (V_dyn_keep_states != 0) {





    MPASS(V_layer3_chain.n_rules > 1);
    data->chain_id = V_layer3_chain.id;
    data->f_pos = V_layer3_chain.n_rules - 2;
    info->f_pos = data->f_pos;
   } else {
    rule = ((void*)0);
    info->direction = MATCH_NONE;
    DYN_DEBUG("rule %p  [%u, %u] is considered "
        "invalid in data %p", rule, data->ruleid,
        data->rulenum, data);

   }
  } else
   info->f_pos = data->f_pos;
 }
 DYNSTATE_CRITICAL_EXIT();
 return (rule);
}
