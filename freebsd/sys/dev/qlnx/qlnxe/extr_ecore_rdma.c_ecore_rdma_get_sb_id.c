
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ecore_hwfn {int dummy; } ;


 int ECORE_PF_L2_QUE ;
 scalar_t__ FEAT_NUM (struct ecore_hwfn*,int ) ;

u32 ecore_rdma_get_sb_id(struct ecore_hwfn *p_hwfn, u32 rel_sb_id)
{

 return FEAT_NUM(p_hwfn, ECORE_PF_L2_QUE) + rel_sb_id;
}
