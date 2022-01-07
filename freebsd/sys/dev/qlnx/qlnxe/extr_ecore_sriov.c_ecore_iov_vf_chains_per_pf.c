
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ max_chains_per_vf; } ;
struct ecore_hwfn {TYPE_1__ hw_info; } ;


 scalar_t__ ECORE_MAX_VF_CHAINS_PER_PF ;

u8 ecore_iov_vf_chains_per_pf(struct ecore_hwfn *p_hwfn)
{
 u8 max_chains_per_vf = p_hwfn->hw_info.max_chains_per_vf;

 max_chains_per_vf = (max_chains_per_vf) ? max_chains_per_vf
      : ECORE_MAX_VF_CHAINS_PER_PF;

 return max_chains_per_vf;
}
