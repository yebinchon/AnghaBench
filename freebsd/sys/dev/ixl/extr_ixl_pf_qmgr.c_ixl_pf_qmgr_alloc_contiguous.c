
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ixl_pf_qtag {int* qidx; int num_allocated; int num_active; int type; struct ixl_pf_qmgr* qmgr; } ;
struct ixl_pf_qmgr {TYPE_1__* qinfo; } ;
struct TYPE_2__ {int allocated; } ;


 int EINVAL ;
 int ENOSPC ;
 int IXL_PF_QALLOC_CONTIGUOUS ;
 int bzero (struct ixl_pf_qtag*,int) ;
 int ixl_pf_qmgr_find_free_contiguous_block (struct ixl_pf_qmgr*,int) ;
 int ixl_pf_qmgr_get_num_free (struct ixl_pf_qmgr*) ;
 scalar_t__ next_power_of_two (int) ;

int
ixl_pf_qmgr_alloc_contiguous(struct ixl_pf_qmgr *qmgr, u16 num, struct ixl_pf_qtag *qtag)
{
 int i;
 int avail;
 int block_start;
 u16 alloc_size;

 if (qtag == ((void*)0) || num < 1)
  return (EINVAL);


 alloc_size = (u16)next_power_of_two(num);


 avail = ixl_pf_qmgr_get_num_free(qmgr);
 if (avail < alloc_size)
  return (ENOSPC);

 block_start = ixl_pf_qmgr_find_free_contiguous_block(qmgr, alloc_size);
 if (block_start < 0)
  return (ENOSPC);


 for (i = block_start; i < block_start + alloc_size; i++)
  qmgr->qinfo[i].allocated = 1;

 bzero(qtag, sizeof(*qtag));
 qtag->qmgr = qmgr;
 qtag->type = IXL_PF_QALLOC_CONTIGUOUS;
 qtag->qidx[0] = block_start;
 qtag->num_allocated = alloc_size;
 qtag->num_active = num;

 return (0);
}
