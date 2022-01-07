
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct ipfw_dyn_info {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct ip_fw_args {int m; int f_id; } ;
struct ip_fw {int dummy; } ;
struct TYPE_4__ {int opcode; int arg1; } ;
struct TYPE_5__ {TYPE_1__ o; scalar_t__ limit_mask; int conn_limit; } ;
typedef TYPE_2__ ipfw_insn_limit ;


 scalar_t__ IP_FW_ARG_TABLEARG (struct ip_fw_chain*,int ,scalar_t__) ;
 scalar_t__ IS_IP6_FLOW_ID (int *) ;
 int M_GETFIB (int ) ;
 int O_LIMIT ;
 int dyn_getscopeid (struct ip_fw_args const*) ;
 int dyn_install_state (int *,int ,int ,void const*,int,struct ip_fw*,struct ipfw_dyn_info*,scalar_t__,scalar_t__,int ,int ) ;

int
ipfw_dyn_install_state(struct ip_fw_chain *chain, struct ip_fw *rule,
    const ipfw_insn_limit *cmd, const struct ip_fw_args *args,
    const void *ulp, int pktlen, struct ipfw_dyn_info *info,
    uint32_t tablearg)
{
 uint32_t limit;
 uint16_t limit_mask;

 if (cmd->o.opcode == O_LIMIT) {
  limit = IP_FW_ARG_TABLEARG(chain, cmd->conn_limit, limit);
  limit_mask = cmd->limit_mask;
 } else {
  limit = 0;
  limit_mask = 0;
 }
 return (dyn_install_state(&args->f_id,



     0, M_GETFIB(args->m), ulp, pktlen, rule, info, limit,
     limit_mask, cmd->o.arg1, cmd->o.opcode));
}
