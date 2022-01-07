
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ixl_pf_qmgr {int num_queues; TYPE_1__* qinfo; } ;
struct TYPE_2__ {scalar_t__ allocated; } ;


 int EINVAL ;
 int ENOSPC ;

int
ixl_pf_qmgr_get_first_free(struct ixl_pf_qmgr *qmgr, u16 start)
{
 int i;

 if (start > qmgr->num_queues - 1)
  return (-EINVAL);

 for (i = start; i < qmgr->num_queues; i++) {
  if (qmgr->qinfo[i].allocated)
   continue;
  else
   return (i);
 }


 return (-ENOSPC);
}
