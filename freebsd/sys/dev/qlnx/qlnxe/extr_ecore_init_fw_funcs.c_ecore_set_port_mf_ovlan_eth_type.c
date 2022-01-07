
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_hwfn {int dummy; } ;


 int DORQ_REG_TAG1_ETHERTYPE_RT_OFFSET ;
 int STORE_RT_REG (struct ecore_hwfn*,int ,int ) ;

void ecore_set_port_mf_ovlan_eth_type(struct ecore_hwfn *p_hwfn, u32 ethType)
{

 STORE_RT_REG(p_hwfn, DORQ_REG_TAG1_ETHERTYPE_RT_OFFSET, ethType);
}
