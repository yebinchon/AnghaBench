
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;


 int CDU_REG_CCFC_CTX_VALID0 ;
 int CDU_REG_CCFC_CTX_VALID1 ;
 int CDU_REG_TCFC_CTX_VALID0 ;
 int CDU_VALIDATION_DEFAULT_CFG ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

void ecore_enable_context_validation(struct ecore_hwfn * p_hwfn, struct ecore_ptt *p_ptt)
{
 u32 ctx_validation;


 ctx_validation = CDU_VALIDATION_DEFAULT_CFG << 24;
 ecore_wr(p_hwfn, p_ptt, CDU_REG_CCFC_CTX_VALID0, ctx_validation);


 ctx_validation = CDU_VALIDATION_DEFAULT_CFG << 8;
 ecore_wr(p_hwfn, p_ptt, CDU_REG_CCFC_CTX_VALID1, ctx_validation);


 ctx_validation = CDU_VALIDATION_DEFAULT_CFG << 8;
 ecore_wr(p_hwfn, p_ptt, CDU_REG_TCFC_CTX_VALID0, ctx_validation);
}
