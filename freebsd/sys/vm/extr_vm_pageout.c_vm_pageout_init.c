
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct vm_domain {scalar_t__ vmd_free_count; scalar_t__ vmd_free_severe; scalar_t__ vmd_interrupt_free_min; scalar_t__ vmd_pageout_free_min; scalar_t__ vmd_inactive_target; scalar_t__ vmd_free_min; scalar_t__ vmd_free_target; scalar_t__ vmd_free_reserved; } ;
struct TYPE_2__ {int v_page_count; int v_free_severe; int v_interrupt_free_min; int v_pageout_free_min; int v_inactive_target; int v_free_min; int v_free_target; int v_free_reserved; } ;


 struct vm_domain* VM_DOMAIN (int) ;
 TYPE_1__ vm_cnt ;
 int vm_ndomains ;
 int vm_page_max_user_wired ;
 int vm_pageout_init_domain (int) ;
 int vm_pageout_page_count ;
 int vm_pageout_update_period ;

__attribute__((used)) static void
vm_pageout_init(void)
{
 u_int freecount;
 int i;




 if (vm_cnt.v_page_count < 2000)
  vm_pageout_page_count = 8;

 freecount = 0;
 for (i = 0; i < vm_ndomains; i++) {
  struct vm_domain *vmd;

  vm_pageout_init_domain(i);
  vmd = VM_DOMAIN(i);
  vm_cnt.v_free_reserved += vmd->vmd_free_reserved;
  vm_cnt.v_free_target += vmd->vmd_free_target;
  vm_cnt.v_free_min += vmd->vmd_free_min;
  vm_cnt.v_inactive_target += vmd->vmd_inactive_target;
  vm_cnt.v_pageout_free_min += vmd->vmd_pageout_free_min;
  vm_cnt.v_interrupt_free_min += vmd->vmd_interrupt_free_min;
  vm_cnt.v_free_severe += vmd->vmd_free_severe;
  freecount += vmd->vmd_free_count;
 }






 if (vm_pageout_update_period == 0)
  vm_pageout_update_period = 600;

 if (vm_page_max_user_wired == 0)
  vm_page_max_user_wired = freecount / 3;
}
