
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int p_main_ptt; int p_dev; } ;


 scalar_t__ ECORE_IS_AH (int ) ;
 scalar_t__ ECORE_IS_E5 (int ) ;
 int PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ ;
 int PGLUE_B_REG_PGL_ADDR_88_F0_BB ;
 int PGLUE_B_REG_PGL_ADDR_8C_F0_BB ;
 int PGLUE_B_REG_PGL_ADDR_90_F0_BB ;
 int PGLUE_B_REG_PGL_ADDR_94_F0_BB ;
 int PGLUE_B_REG_PGL_ADDR_E8_F0_K2_E5 ;
 int PGLUE_B_REG_PGL_ADDR_EC_F0_K2_E5 ;
 int PGLUE_B_REG_PGL_ADDR_F0_F0_K2_E5 ;
 int PGLUE_B_REG_PGL_ADDR_F4_F0_K2_E5 ;
 int ecore_pglueb_clear_err (struct ecore_hwfn*,int ) ;
 int ecore_wr (struct ecore_hwfn*,int ,int ,int) ;

__attribute__((used)) static void ecore_hw_hwfn_prepare(struct ecore_hwfn *p_hwfn)
{

 if (ECORE_IS_AH(p_hwfn->p_dev) || ECORE_IS_E5(p_hwfn->p_dev)) {
  ecore_wr(p_hwfn, p_hwfn->p_main_ptt,
    PGLUE_B_REG_PGL_ADDR_E8_F0_K2_E5, 0);
  ecore_wr(p_hwfn, p_hwfn->p_main_ptt,
    PGLUE_B_REG_PGL_ADDR_EC_F0_K2_E5, 0);
  ecore_wr(p_hwfn, p_hwfn->p_main_ptt,
    PGLUE_B_REG_PGL_ADDR_F0_F0_K2_E5, 0);
  ecore_wr(p_hwfn, p_hwfn->p_main_ptt,
    PGLUE_B_REG_PGL_ADDR_F4_F0_K2_E5, 0);
 } else {
  ecore_wr(p_hwfn, p_hwfn->p_main_ptt,
    PGLUE_B_REG_PGL_ADDR_88_F0_BB, 0);
  ecore_wr(p_hwfn, p_hwfn->p_main_ptt,
    PGLUE_B_REG_PGL_ADDR_8C_F0_BB, 0);
  ecore_wr(p_hwfn, p_hwfn->p_main_ptt,
    PGLUE_B_REG_PGL_ADDR_90_F0_BB, 0);
  ecore_wr(p_hwfn, p_hwfn->p_main_ptt,
    PGLUE_B_REG_PGL_ADDR_94_F0_BB, 0);
 }


 ecore_pglueb_clear_err(p_hwfn, p_hwfn->p_main_ptt);


 ecore_wr(p_hwfn, p_hwfn->p_main_ptt,
   PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ, 1);
}
