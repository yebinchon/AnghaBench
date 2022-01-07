
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct vm_pagequeue {scalar_t__ pq_cnt; } ;
struct vm_domain {scalar_t__ vmd_segs; scalar_t__ vmd_free_count; int vmd_background_launder_target; scalar_t__ vmd_laundry_request; int vmd_pageout_deficit; scalar_t__ vmd_clean_pages_freed; scalar_t__ vmd_free_min; scalar_t__ vmd_free_target; struct vm_pagequeue* vmd_pagequeues; } ;


 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,struct vm_domain*,int ) ;
 int KASSERT (int,char*) ;
 int PAGE_SIZE ;
 size_t PQ_INACTIVE ;
 size_t PQ_LAUNDRY ;
 int PVM ;
 struct vm_domain* VM_DOMAIN (int) ;
 int VM_INACT_SCAN_RATE ;
 int VM_LAUNDER_RATE ;
 scalar_t__ VM_LAUNDRY_IDLE ;
 scalar_t__ VM_LAUNDRY_SHORTFALL ;
 int howmany (scalar_t__,scalar_t__) ;
 int hz ;
 scalar_t__ isqrt (int ) ;
 scalar_t__ min (int ,int) ;
 int mtx_sleep (scalar_t__*,int ,int ,char*,int ) ;
 int pause (char*,int) ;
 int swapoff ;
 int swapon ;
 int vm_background_launder_max ;
 int vm_background_launder_rate ;
 int vm_laundry_target (struct vm_domain*) ;
 int vm_pageout_launder (struct vm_domain*,int,int) ;
 int vm_pageout_swapoff ;
 int vm_pageout_swapon ;
 int vm_pagequeue_lock (struct vm_pagequeue*) ;
 int vm_pagequeue_lockptr (struct vm_pagequeue*) ;
 int vm_pagequeue_unlock (struct vm_pagequeue*) ;

__attribute__((used)) static void
vm_pageout_laundry_worker(void *arg)
{
 struct vm_domain *vmd;
 struct vm_pagequeue *pq;
 uint64_t nclean, ndirty, nfreed;
 int domain, last_target, launder, shortfall, shortfall_cycle, target;
 bool in_shortfall;

 domain = (uintptr_t)arg;
 vmd = VM_DOMAIN(domain);
 pq = &vmd->vmd_pagequeues[PQ_LAUNDRY];
 KASSERT(vmd->vmd_segs != 0, ("domain without segments"));

 shortfall = 0;
 in_shortfall = 0;
 shortfall_cycle = 0;
 last_target = target = 0;
 nfreed = 0;




 (void)EVENTHANDLER_REGISTER(swapon, vm_pageout_swapon, vmd,
     EVENTHANDLER_PRI_ANY);
 (void)EVENTHANDLER_REGISTER(swapoff, vm_pageout_swapoff, vmd,
     EVENTHANDLER_PRI_ANY);




 for (;;) {
  KASSERT(target >= 0, ("negative target %d", target));
  KASSERT(shortfall_cycle >= 0,
      ("negative cycle %d", shortfall_cycle));
  launder = 0;





  if (shortfall > 0) {
   in_shortfall = 1;
   shortfall_cycle = VM_LAUNDER_RATE / VM_INACT_SCAN_RATE;
   target = shortfall;
  } else if (!in_shortfall)
   goto trybackground;
  else if (shortfall_cycle == 0 || vm_laundry_target(vmd) <= 0) {







   in_shortfall = 0;
   target = 0;
   goto trybackground;
  }
  launder = target / shortfall_cycle--;
  goto dolaundry;
trybackground:
  nclean = vmd->vmd_free_count +
      vmd->vmd_pagequeues[PQ_INACTIVE].pq_cnt;
  ndirty = vmd->vmd_pagequeues[PQ_LAUNDRY].pq_cnt;
  if (target == 0 && ndirty * isqrt(howmany(nfreed + 1,
      vmd->vmd_free_target - vmd->vmd_free_min)) >= nclean) {
   target = vmd->vmd_background_launder_target;
  }
  if (target > 0) {
   if (nfreed > 0) {
    nfreed = 0;
    last_target = target;
   } else if (last_target - target >=
       vm_background_launder_max * PAGE_SIZE / 1024) {
    target = 0;
   }
   launder = vm_background_launder_rate * PAGE_SIZE / 1024;
   launder /= VM_LAUNDER_RATE;
   if (launder > target)
    launder = target;
  }

dolaundry:
  if (launder > 0) {





   target -= min(vm_pageout_launder(vmd, launder,
       in_shortfall), target);
   pause("laundp", hz / VM_LAUNDER_RATE);
  }






  vm_pagequeue_lock(pq);
  if (target == 0 && vmd->vmd_laundry_request == VM_LAUNDRY_IDLE)
   (void)mtx_sleep(&vmd->vmd_laundry_request,
       vm_pagequeue_lockptr(pq), PVM, "launds", 0);






  if (vmd->vmd_laundry_request == VM_LAUNDRY_SHORTFALL &&
      (!in_shortfall || shortfall_cycle == 0)) {
   shortfall = vm_laundry_target(vmd) +
       vmd->vmd_pageout_deficit;
   target = 0;
  } else
   shortfall = 0;

  if (target == 0)
   vmd->vmd_laundry_request = VM_LAUNDRY_IDLE;
  nfreed += vmd->vmd_clean_pages_freed;
  vmd->vmd_clean_pages_freed = 0;
  vm_pagequeue_unlock(pq);
 }
}
