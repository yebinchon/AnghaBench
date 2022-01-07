
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixl_pf_qmgr {int num_queues; TYPE_1__* qinfo; } ;
struct TYPE_2__ {int allocated; } ;



__attribute__((used)) static int
ixl_pf_qmgr_find_free_contiguous_block(struct ixl_pf_qmgr *qmgr, int num)
{
 int i;
 int count = 0;
 bool block_started = 0;
 int possible_start;

 for (i = 0; i < qmgr->num_queues; i++) {
  if (!qmgr->qinfo[i].allocated) {
   if (!block_started) {
    block_started = 1;
    possible_start = i;
   }
   count++;
   if (count == num)
    return (possible_start);
  } else {
   block_started = 0;
   count = 0;
  }
 }


 return (-1);
}
