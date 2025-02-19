
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;


 int CAM_LINE_SIZE ;
 scalar_t__ PRS_REG_GFT_CAM ;
 scalar_t__ PRS_REG_GFT_PROFILE_MASK_RAM ;
 scalar_t__ PRS_REG_SEARCH_GFT ;
 int RAM_LINE_SIZE ;
 scalar_t__ REG_SIZE ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int ) ;

void ecore_gft_disable(struct ecore_hwfn *p_hwfn,
    struct ecore_ptt *p_ptt,
    u16 pf_id)
{

    ecore_wr(p_hwfn, p_ptt, PRS_REG_SEARCH_GFT, 0);




    ecore_wr(p_hwfn, p_ptt, PRS_REG_GFT_CAM + CAM_LINE_SIZE*pf_id, 0);


    ecore_wr(p_hwfn, p_ptt, PRS_REG_GFT_PROFILE_MASK_RAM + RAM_LINE_SIZE*pf_id, 0);
    ecore_wr(p_hwfn, p_ptt, PRS_REG_GFT_PROFILE_MASK_RAM + RAM_LINE_SIZE*pf_id + REG_SIZE, 0);
}
