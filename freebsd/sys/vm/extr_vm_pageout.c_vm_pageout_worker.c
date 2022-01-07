
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct vm_domain {scalar_t__ vmd_segs; scalar_t__ vmd_free_count; int vmd_pid; int vmd_pageout_wanted; int vmd_last_active_scan; } ;


 int KASSERT (int,char*) ;
 int PDROP ;
 int PVM ;
 scalar_t__ TRUE ;
 int VM_CNT_INC (int ) ;
 struct vm_domain* VM_DOMAIN (int) ;
 int VM_INACT_SCAN_RATE ;
 int atomic_store_int (int *,int) ;
 int hz ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 scalar_t__ mtx_sleep (int *,int ,int,char*,int) ;
 int pause (char*,int) ;
 int pidctrl_daemon (int *,scalar_t__) ;
 int ticks ;
 int v_pdwakeups ;
 int vm_domain_pageout_lock (struct vm_domain*) ;
 int vm_domain_pageout_lockptr (struct vm_domain*) ;
 int vm_domain_pageout_unlock (struct vm_domain*) ;
 int vm_pageout_active_target (struct vm_domain*) ;
 scalar_t__ vm_pageout_lowmem () ;
 int vm_pageout_scan_active (struct vm_domain*,int) ;
 int vm_pageout_scan_inactive (struct vm_domain*,int,int*) ;
 scalar_t__ vm_paging_needed (struct vm_domain*,scalar_t__) ;

__attribute__((used)) static void
vm_pageout_worker(void *arg)
{
 struct vm_domain *vmd;
 u_int ofree;
 int addl_shortage, domain, shortage;
 bool target_met;

 domain = (uintptr_t)arg;
 vmd = VM_DOMAIN(domain);
 shortage = 0;
 target_met = 1;







 KASSERT(vmd->vmd_segs != 0, ("domain without segments"));
 vmd->vmd_last_active_scan = ticks;




 while (TRUE) {
  vm_domain_pageout_lock(vmd);






  atomic_store_int(&vmd->vmd_pageout_wanted, 0);




  if (vm_paging_needed(vmd, vmd->vmd_free_count)) {





   vm_domain_pageout_unlock(vmd);
   if (!target_met)
    pause("pwait", hz / VM_INACT_SCAN_RATE);
  } else {




   if (mtx_sleep(&vmd->vmd_pageout_wanted,
       vm_domain_pageout_lockptr(vmd), PDROP | PVM,
       "psleep", hz / VM_INACT_SCAN_RATE) == 0)
    VM_CNT_INC(v_pdwakeups);
  }


  atomic_store_int(&vmd->vmd_pageout_wanted, 1);







  shortage = pidctrl_daemon(&vmd->vmd_pid, vmd->vmd_free_count);
  if (shortage > 0) {
   ofree = vmd->vmd_free_count;
   if (vm_pageout_lowmem() && vmd->vmd_free_count > ofree)
    shortage -= min(vmd->vmd_free_count - ofree,
        (u_int)shortage);
   target_met = vm_pageout_scan_inactive(vmd, shortage,
       &addl_shortage);
  } else
   addl_shortage = 0;






  shortage = vm_pageout_active_target(vmd) + addl_shortage;
  vm_pageout_scan_active(vmd, shortage);
 }
}
