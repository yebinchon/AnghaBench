
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int dummy; } ;


 int PQ_FLAGS_LB ;
 int STORE_RT_REG (struct ecore_hwfn*,int ,int ) ;
 int XCM_REG_CON_PHY_Q3_RT_OFFSET ;
 int ecore_get_cm_pq_idx (struct ecore_hwfn*,int ) ;

__attribute__((used)) static void ecore_cm_init_pf(struct ecore_hwfn *p_hwfn)
{
 STORE_RT_REG(p_hwfn, XCM_REG_CON_PHY_Q3_RT_OFFSET, ecore_get_cm_pq_idx(p_hwfn, PQ_FLAGS_LB));
}
