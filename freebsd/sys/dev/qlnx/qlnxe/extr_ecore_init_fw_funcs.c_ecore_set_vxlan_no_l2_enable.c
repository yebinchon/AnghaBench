
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;


 int PRS_ETH_VXLAN_NO_L2_ENABLE_OFFSET ;
 scalar_t__ PRS_ETH_VXLAN_NO_L2_OUTPUT_FORMAT ;
 int PRS_REG_MSG_INFO ;
 int PRS_REG_OUTPUT_FORMAT_4_0_BB_K2 ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

void ecore_set_vxlan_no_l2_enable(struct ecore_hwfn *p_hwfn,
                                struct ecore_ptt *p_ptt,
                                bool enable)
{
    u32 reg_val, cfg_mask;


    reg_val = ecore_rd(p_hwfn, p_ptt, PRS_REG_MSG_INFO);


    cfg_mask = (1 << PRS_ETH_VXLAN_NO_L2_ENABLE_OFFSET);

    if (enable)
    {

        reg_val |= cfg_mask;


        ecore_wr(p_hwfn, p_ptt, PRS_REG_OUTPUT_FORMAT_4_0_BB_K2, (u32)PRS_ETH_VXLAN_NO_L2_OUTPUT_FORMAT);
    }
    else
    {

        reg_val &= ~cfg_mask;
    }


    ecore_wr(p_hwfn, p_ptt, PRS_REG_MSG_INFO, reg_val);
}
