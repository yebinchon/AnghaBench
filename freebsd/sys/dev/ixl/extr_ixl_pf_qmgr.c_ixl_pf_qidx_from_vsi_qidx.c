
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ixl_pf_qtag {size_t num_allocated; scalar_t__ type; size_t first_qidx; size_t* qidx; } ;


 scalar_t__ IXL_PF_QALLOC_CONTIGUOUS ;
 int MPASS (int) ;

u16
ixl_pf_qidx_from_vsi_qidx(struct ixl_pf_qtag *qtag, u16 index)
{
 MPASS(index < qtag->num_allocated);

 if (qtag->type == IXL_PF_QALLOC_CONTIGUOUS)
  return qtag->first_qidx + index;
 else
  return qtag->qidx[index];
}
