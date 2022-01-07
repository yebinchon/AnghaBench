
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct ecore_hwfn {int p_dev; int rel_pf_id; } ;


 scalar_t__ GTT_BAR0_MAP_REG_USDM_RAM ;
 int OSAL_MMIOWB (int ) ;
 int REG_WR16 (struct ecore_hwfn*,scalar_t__,int ) ;
 scalar_t__ USTORM_EQE_CONS_OFFSET (int ) ;

void ecore_eq_prod_update(struct ecore_hwfn *p_hwfn,
     u16 prod)
{
 u32 addr = GTT_BAR0_MAP_REG_USDM_RAM +
  USTORM_EQE_CONS_OFFSET(p_hwfn->rel_pf_id);

 REG_WR16(p_hwfn, addr, prod);


 OSAL_MMIOWB(p_hwfn->p_dev);
}
