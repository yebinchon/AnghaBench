
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ip_fw_chain {TYPE_1__** map; int id; } ;
struct TYPE_4__ {int slot; int rulenum; scalar_t__ rule_id; int chain_id; } ;
struct ip_fw_args {int flags; TYPE_2__ rule; } ;
struct TYPE_3__ {int rulenum; scalar_t__ id; } ;


 int IPFW_ARGS_REF ;

__attribute__((used)) static inline void
set_match(struct ip_fw_args *args, int slot,
 struct ip_fw_chain *chain)
{
 args->rule.chain_id = chain->id;
 args->rule.slot = slot + 1;
 args->rule.rule_id = 1 + chain->map[slot]->id;
 args->rule.rulenum = chain->map[slot]->rulenum;
 args->flags |= IPFW_ARGS_REF;
}
