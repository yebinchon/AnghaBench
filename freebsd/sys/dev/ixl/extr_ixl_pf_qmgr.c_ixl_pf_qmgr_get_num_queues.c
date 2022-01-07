
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_pf_qmgr {int num_queues; } ;



int
ixl_pf_qmgr_get_num_queues(struct ixl_pf_qmgr *qmgr)
{
 return (qmgr->num_queues);
}
