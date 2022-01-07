
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ecore_hwfn {int p_dev; } ;


 scalar_t__ ECORE_IS_E5 (int ) ;
 scalar_t__ MAX_NUM_PORTS_BB ;
 scalar_t__ MAX_NUM_PORTS_E5 ;
 scalar_t__ NUM_OF_PHYS_TCS ;
 scalar_t__ PURE_LB_TC ;

__attribute__((used)) static u8 ecore_get_ext_voq(struct ecore_hwfn *p_hwfn,
       u8 port_id,
       u8 tc,
       u8 max_phys_tcs_per_port)
{
 if (tc == PURE_LB_TC)
  return NUM_OF_PHYS_TCS * (ECORE_IS_E5(p_hwfn->p_dev) ? MAX_NUM_PORTS_E5 : MAX_NUM_PORTS_BB) + port_id;
 else
  return port_id * (ECORE_IS_E5(p_hwfn->p_dev) ? NUM_OF_PHYS_TCS : max_phys_tcs_per_port) + tc;
}
