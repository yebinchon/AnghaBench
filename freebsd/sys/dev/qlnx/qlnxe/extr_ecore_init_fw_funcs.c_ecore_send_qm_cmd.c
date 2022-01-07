
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;


 int QM_REG_SDMCMDADDR ;
 int QM_REG_SDMCMDDATALSB ;
 int QM_REG_SDMCMDDATAMSB ;
 int QM_REG_SDMCMDGO ;
 int ecore_poll_on_qm_cmd_ready (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

__attribute__((used)) static bool ecore_send_qm_cmd(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt,
         u32 cmd_addr,
         u32 cmd_data_lsb,
         u32 cmd_data_msb)
{
 if (!ecore_poll_on_qm_cmd_ready(p_hwfn, p_ptt))
  return 0;

 ecore_wr(p_hwfn, p_ptt, QM_REG_SDMCMDADDR, cmd_addr);
 ecore_wr(p_hwfn, p_ptt, QM_REG_SDMCMDDATALSB, cmd_data_lsb);
 ecore_wr(p_hwfn, p_ptt, QM_REG_SDMCMDDATAMSB, cmd_data_msb);
 ecore_wr(p_hwfn, p_ptt, QM_REG_SDMCMDGO, 1);
 ecore_wr(p_hwfn, p_ptt, QM_REG_SDMCMDGO, 0);

 return ecore_poll_on_qm_cmd_ready(p_hwfn, p_ptt);
}
