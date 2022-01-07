
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; int plat_plen; int plat_prefix; } ;
struct nat64lsn_cfg {int nomatch_verdict; TYPE_1__ base; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_9__ {int addr_type; int dst_ip6; } ;
struct ip_fw_args {int * m; TYPE_3__ f_id; } ;
struct TYPE_8__ {scalar_t__ opcode; scalar_t__ arg1; } ;
typedef TYPE_2__ ipfw_insn ;


 int IPFW_RLOCK_ASSERT (struct ip_fw_chain*) ;
 int IP_FW_DENY ;
 int IP_FW_PASS ;
 int NAT64LSN_ANYPREFIX ;
 struct nat64lsn_cfg* NAT64_LOOKUP (struct ip_fw_chain*,TYPE_2__*) ;
 scalar_t__ O_EXTERNAL_ACTION ;
 scalar_t__ O_EXTERNAL_INSTANCE ;
 scalar_t__ V_nat64lsn_eid ;
 int m_freem (int *) ;
 int memcmp (int *,int *,int) ;
 int nat64lsn_translate4 (struct nat64lsn_cfg*,TYPE_3__*,int **) ;
 int nat64lsn_translate6 (struct nat64lsn_cfg*,TYPE_3__*,int **) ;

int
ipfw_nat64lsn(struct ip_fw_chain *ch, struct ip_fw_args *args,
    ipfw_insn *cmd, int *done)
{
 struct nat64lsn_cfg *cfg;
 ipfw_insn *icmd;
 int ret;

 IPFW_RLOCK_ASSERT(ch);

 *done = 0;
 icmd = cmd + 1;
 if (cmd->opcode != O_EXTERNAL_ACTION ||
     cmd->arg1 != V_nat64lsn_eid ||
     icmd->opcode != O_EXTERNAL_INSTANCE ||
     (cfg = NAT64_LOOKUP(ch, icmd)) == ((void*)0))
  return (IP_FW_DENY);

 *done = 1;

 switch (args->f_id.addr_type) {
 case 4:
  ret = nat64lsn_translate4(cfg, &args->f_id, &args->m);
  break;
 case 6:



  if ((cfg->base.flags & NAT64LSN_ANYPREFIX) == 0 &&
      memcmp(&args->f_id.dst_ip6, &cfg->base.plat_prefix,
      cfg->base.plat_plen / 8) != 0) {
   ret = cfg->nomatch_verdict;
   break;
  }
  ret = nat64lsn_translate6(cfg, &args->f_id, &args->m);
  break;
 default:
  ret = cfg->nomatch_verdict;
 }

 if (ret != IP_FW_PASS && args->m != ((void*)0)) {
  m_freem(args->m);
  args->m = ((void*)0);
 }
 return (ret);
}
