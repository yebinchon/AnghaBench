
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int abs_pf_id; } ;


 int PGLUE_B_REG_WAS_ERROR_PF_31_0_CLR ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

__attribute__((used)) static void ecore_pglueb_clear_err(struct ecore_hwfn *p_hwfn,
       struct ecore_ptt *p_ptt)
{
 ecore_wr(p_hwfn, p_ptt, PGLUE_B_REG_WAS_ERROR_PF_31_0_CLR,
   1 << p_hwfn->abs_pf_id);
}
