
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int num_hw_tc; } ;
struct ecore_hwfn {TYPE_1__ hw_info; } ;



u8 ecore_init_qm_get_num_tcs(struct ecore_hwfn *p_hwfn)
{
 return p_hwfn->hw_info.num_hw_tc;
}
