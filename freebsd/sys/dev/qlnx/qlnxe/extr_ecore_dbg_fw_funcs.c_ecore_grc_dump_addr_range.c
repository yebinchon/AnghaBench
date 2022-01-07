
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct dbg_tools_data {scalar_t__ num_regs_read; size_t platform_id; scalar_t__ use_dmae; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
typedef scalar_t__ osal_uintptr_t ;
struct TYPE_2__ {scalar_t__ log_thresh; scalar_t__ dmae_thresh; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,...) ;
 int DWORDS_TO_BYTES (scalar_t__) ;
 int ECORE_MSG_DEBUG ;
 int OSAL_NULL ;
 scalar_t__ PROTECT_WIDE_BUS ;
 int ecore_dmae_grc2host (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,scalar_t__,int ) ;
 int ecore_read_regs (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__*,scalar_t__,scalar_t__) ;
 TYPE_1__* s_platform_defs ;

__attribute__((used)) static u32 ecore_grc_dump_addr_range(struct ecore_hwfn *p_hwfn,
          struct ecore_ptt *p_ptt,
          u32 *dump_buf,
          bool dump,
          u32 addr,
          u32 len,
          bool wide_bus)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;

 if (!dump)
  return len;


 dev_data->num_regs_read += len;
 if (dev_data->num_regs_read >= s_platform_defs[dev_data->platform_id].log_thresh) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_DEBUG, "Dumping %d registers...\n", dev_data->num_regs_read);
  dev_data->num_regs_read = 0;
 }


 if (dev_data->use_dmae && (len >= s_platform_defs[dev_data->platform_id].dmae_thresh || (PROTECT_WIDE_BUS && wide_bus))) {
  if (!ecore_dmae_grc2host(p_hwfn, p_ptt, DWORDS_TO_BYTES(addr), (u64)(osal_uintptr_t)(dump_buf), len, OSAL_NULL))
   return len;
  dev_data->use_dmae = 0;
  DP_VERBOSE(p_hwfn, ECORE_MSG_DEBUG, "Failed reading from chip using DMAE, using GRC instead\n");
 }


 ecore_read_regs(p_hwfn, p_ptt, dump_buf, addr, len);

 return len;
}
