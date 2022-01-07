
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_fw_chain {struct ip_fw* default_rule; struct ip_fw* map; int nat; } ;
struct ip_fw {int cmd_len; TYPE_1__* cmd; int flags; } ;
struct TYPE_2__ {int len; int opcode; } ;


 int ENOSPC ;
 int IPFIREWALL_VERBOSE_LIMIT ;
 int IPFW_LOCK_INIT (struct ip_fw_chain*) ;
 int IPFW_RULE_NOOPT ;
 scalar_t__ IS_DEFAULT_VNET (int ) ;
 int LIST_INIT (int *) ;
 int M_IPFW ;
 int O_ACCEPT ;
 int O_DENY ;
 int V_autoinc_step ;
 int V_fw_deny_unknown_exthdrs ;
 int V_fw_tables_max ;
 int V_fw_verbose ;
 int V_ip_fw_ctl_ptr ;
 int V_ipfw_vnet_ready ;
 struct ip_fw_chain V_layer3_chain ;
 int V_verbose_limit ;
 int curvnet ;
 int default_fw_tables ;
 scalar_t__ default_to_accept ;
 int free (struct ip_fw*,int ) ;
 int ipfw_add_protected_rule (struct ip_fw_chain*,struct ip_fw*,int ) ;
 struct ip_fw* ipfw_alloc_rule (struct ip_fw_chain*,int) ;
 int ipfw_attach_hooks () ;
 int ipfw_bpf_init (int) ;
 int ipfw_ctl3 ;
 int ipfw_dyn_init (struct ip_fw_chain*) ;
 int ipfw_eaction_init (struct ip_fw_chain*,int) ;
 int ipfw_init_counters () ;
 int ipfw_init_skipto_cache (struct ip_fw_chain*) ;
 int ipfw_init_srv (struct ip_fw_chain*) ;
 int ipfw_init_tables (struct ip_fw_chain*,int) ;
 int printf (char*) ;

__attribute__((used)) static int
vnet_ipfw_init(const void *unused)
{
 int error, first;
 struct ip_fw *rule = ((void*)0);
 struct ip_fw_chain *chain;

 chain = &V_layer3_chain;

 first = IS_DEFAULT_VNET(curvnet) ? 1 : 0;


 V_autoinc_step = 100;
 V_fw_deny_unknown_exthdrs = 1;
 ipfw_init_srv(chain);

 ipfw_init_counters();

 V_fw_tables_max = default_fw_tables;
 error = ipfw_init_tables(chain, first);
 if (error) {
  printf("ipfw2: setting up tables failed\n");
  free(chain->map, M_IPFW);
  free(rule, M_IPFW);
  return (ENOSPC);
 }

 IPFW_LOCK_INIT(chain);


 rule = ipfw_alloc_rule(chain, sizeof(struct ip_fw));
 rule->flags |= IPFW_RULE_NOOPT;
 rule->cmd_len = 1;
 rule->cmd[0].len = 1;
 rule->cmd[0].opcode = default_to_accept ? O_ACCEPT : O_DENY;
 chain->default_rule = rule;
 ipfw_add_protected_rule(chain, rule, 0);

 ipfw_dyn_init(chain);
 ipfw_eaction_init(chain, first);



 ipfw_bpf_init(first);


 V_ipfw_vnet_ready = 1;
 V_ip_fw_ctl_ptr = ipfw_ctl3;
 error = ipfw_attach_hooks();
 return (error);
}
