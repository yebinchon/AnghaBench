
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_domain {scalar_t__ vmd_oom_seq; void* vmd_oom; } ;


 void* FALSE ;
 void* TRUE ;
 int VM_OOM_MEM ;
 int atomic_fetchadd_int (int *,int) ;
 int atomic_subtract_int (int *,int) ;
 int vm_ndomains ;
 int vm_pageout_oom (int ) ;
 scalar_t__ vm_pageout_oom_seq ;
 int vm_pageout_oom_vote ;

__attribute__((used)) static void
vm_pageout_mightbe_oom(struct vm_domain *vmd, int page_shortage,
    int starting_page_shortage)
{
 int old_vote;

 if (starting_page_shortage <= 0 || starting_page_shortage !=
     page_shortage)
  vmd->vmd_oom_seq = 0;
 else
  vmd->vmd_oom_seq++;
 if (vmd->vmd_oom_seq < vm_pageout_oom_seq) {
  if (vmd->vmd_oom) {
   vmd->vmd_oom = FALSE;
   atomic_subtract_int(&vm_pageout_oom_vote, 1);
  }
  return;
 }





 vmd->vmd_oom_seq = 0;

 if (vmd->vmd_oom)
  return;

 vmd->vmd_oom = TRUE;
 old_vote = atomic_fetchadd_int(&vm_pageout_oom_vote, 1);
 if (old_vote != vm_ndomains - 1)
  return;






 vm_pageout_oom(VM_OOM_MEM);







 vmd->vmd_oom = FALSE;
 atomic_subtract_int(&vm_pageout_oom_vote, 1);
}
