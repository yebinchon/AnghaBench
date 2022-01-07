
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixl_pf_qmgr {int num_queues; TYPE_1__* qinfo; } ;
struct TYPE_2__ {int allocated; } ;



int
ixl_pf_qmgr_get_num_free(struct ixl_pf_qmgr *qmgr)
{
 int count = 0;

 for (int i = 0; i < qmgr->num_queues; i++) {
  if (!qmgr->qinfo[i].allocated)
   count++;
 }

 return (count);
}
