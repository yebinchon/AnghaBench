
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int p_dev; scalar_t__ b_int_enabled; } ;


 int IGU_REG_PF_CONFIGURATION ;
 scalar_t__ IS_VF (int ) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int ) ;

void ecore_int_igu_disable_int(struct ecore_hwfn *p_hwfn,
          struct ecore_ptt *p_ptt)
{
 p_hwfn->b_int_enabled = 0;

 if (IS_VF(p_hwfn->p_dev))
  return;

 ecore_wr(p_hwfn, p_ptt, IGU_REG_PF_CONFIGURATION, 0);
}
