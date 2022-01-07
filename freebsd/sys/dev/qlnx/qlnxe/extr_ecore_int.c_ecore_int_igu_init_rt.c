
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_hwfn {int dummy; } ;


 int IGU_PF_CONF_FUNC_EN ;
 int IGU_REG_PF_CONFIGURATION_RT_OFFSET ;
 int STORE_RT_REG (struct ecore_hwfn*,int ,int ) ;

void ecore_int_igu_init_rt(struct ecore_hwfn *p_hwfn)
{
 u32 igu_pf_conf = IGU_PF_CONF_FUNC_EN;

 STORE_RT_REG(p_hwfn, IGU_REG_PF_CONFIGURATION_RT_OFFSET, igu_pf_conf);
}
