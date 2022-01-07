
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ixl_pf_qtag {int num_active; int num_allocated; int* qidx; int type; struct ixl_pf_qmgr* qmgr; } ;
struct ixl_pf_qmgr {int num_queues; TYPE_1__* qinfo; } ;
struct TYPE_2__ {int allocated; } ;


 int EDOOFUS ;
 int EINVAL ;
 int ENOSPC ;
 int IXL_PF_QALLOC_SCATTERED ;
 int bzero (struct ixl_pf_qtag*,int) ;
 int ixl_pf_qmgr_get_num_free (struct ixl_pf_qmgr*) ;
 scalar_t__ next_power_of_two (int) ;

int
ixl_pf_qmgr_alloc_scattered(struct ixl_pf_qmgr *qmgr, u16 num, struct ixl_pf_qtag *qtag)
{
 int i;
 int avail, count = 0;
 u16 alloc_size;

 if (qtag == ((void*)0) || num < 1 || num > 16)
  return (EINVAL);


 alloc_size = (u16)next_power_of_two(num);

 avail = ixl_pf_qmgr_get_num_free(qmgr);
 if (avail < alloc_size)
  return (ENOSPC);

 bzero(qtag, sizeof(*qtag));
 qtag->qmgr = qmgr;
 qtag->type = IXL_PF_QALLOC_SCATTERED;
 qtag->num_active = num;
 qtag->num_allocated = alloc_size;

 for (i = 0; i < qmgr->num_queues; i++) {
  if (!qmgr->qinfo[i].allocated) {
   qtag->qidx[count] = i;
   count++;
   qmgr->qinfo[i].allocated = 1;
   if (count == alloc_size)
    return (0);
  }
 }


 return (EDOOFUS);
}
