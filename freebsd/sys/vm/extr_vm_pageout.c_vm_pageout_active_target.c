
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_domain {int vmd_inactive_target; TYPE_1__* vmd_pagequeues; } ;
struct TYPE_2__ {int pq_cnt; } ;


 size_t PQ_INACTIVE ;
 size_t PQ_LAUNDRY ;
 int act_scan_laundry_weight ;
 int vm_paging_target (struct vm_domain*) ;

__attribute__((used)) static int
vm_pageout_active_target(struct vm_domain *vmd)
{
 int shortage;

 shortage = vmd->vmd_inactive_target + vm_paging_target(vmd) -
     (vmd->vmd_pagequeues[PQ_INACTIVE].pq_cnt +
     vmd->vmd_pagequeues[PQ_LAUNDRY].pq_cnt / act_scan_laundry_weight);
 shortage *= act_scan_laundry_weight;
 return (shortage);
}
