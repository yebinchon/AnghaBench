
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;


 int DP_INFO (int ,char*,int const) ;
 scalar_t__ ECORE_IS_BB (int ) ;
 int NIG_REG_WAKE_BUFFER_CLEAR_BB ;
 int WOL_REG_WAKE_BUFFER_CLEAR_K2_E5 ;
 int ecore_mcp_wol_wr (struct ecore_hwfn*,struct ecore_ptt*,int const,int) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int const,int) ;

void ecore_wol_buffer_clear(struct ecore_hwfn *p_hwfn,
       struct ecore_ptt *p_ptt)
{
 const u32 wake_buffer_clear_offset =
  ECORE_IS_BB(p_hwfn->p_dev) ?
  NIG_REG_WAKE_BUFFER_CLEAR_BB : WOL_REG_WAKE_BUFFER_CLEAR_K2_E5;

 DP_INFO(p_hwfn->p_dev,
  "ecore_wol_buffer_clear: reset "
  "REG_WAKE_BUFFER_CLEAR offset=0x%08x\n",
  wake_buffer_clear_offset);

 if (ECORE_IS_BB(p_hwfn->p_dev)) {
  ecore_wr(p_hwfn, p_ptt, wake_buffer_clear_offset, 1);
  ecore_wr(p_hwfn, p_ptt, wake_buffer_clear_offset, 0);
 } else {
  ecore_mcp_wol_wr(p_hwfn, p_ptt, wake_buffer_clear_offset, 1);
  ecore_mcp_wol_wr(p_hwfn, p_ptt, wake_buffer_clear_offset, 0);
 }
}
