
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct ecore_ptt {int dummy; } ;
struct dbg_tools_data {size_t chip_id; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
struct TYPE_2__ {int addr; int * exists; } ;


 int BYTES_TO_DWORDS (int ) ;
 size_t MAX_DBG_RESET_REGS ;
 int OSAL_NULL ;
 size_t ecore_grc_dump_reg_entry (struct ecore_hwfn*,struct ecore_ptt*,size_t*,int,int ,int,int) ;
 size_t ecore_grc_dump_regs_hdr (size_t*,int,size_t,char*,int,int ,int ) ;
 TYPE_1__* s_reset_regs_defs ;

__attribute__((used)) static u32 ecore_grc_dump_reset_regs(struct ecore_hwfn *p_hwfn,
 struct ecore_ptt *p_ptt,
 u32 *dump_buf,
 bool dump)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 u32 i, offset = 0, num_regs = 0;


 offset += ecore_grc_dump_regs_hdr(dump_buf, 0, 0, "eng", -1, OSAL_NULL, OSAL_NULL);


 for (i = 0; i < MAX_DBG_RESET_REGS; i++) {
  if (!s_reset_regs_defs[i].exists[dev_data->chip_id])
   continue;

  offset += ecore_grc_dump_reg_entry(p_hwfn, p_ptt, dump_buf + offset, dump, BYTES_TO_DWORDS(s_reset_regs_defs[i].addr), 1, 0);
  num_regs++;
 }


 if (dump)
  ecore_grc_dump_regs_hdr(dump_buf, 1, num_regs, "eng", -1, OSAL_NULL, OSAL_NULL);

 return offset;
}
