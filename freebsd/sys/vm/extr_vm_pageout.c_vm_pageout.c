
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_name; } ;
struct proc {int dummy; } ;


 int MTX_DEF ;
 scalar_t__ VM_DOMAIN_EMPTY (int) ;
 scalar_t__ bootverbose ;
 struct proc* curproc ;
 struct thread* curthread ;
 int kthread_add (int (*) (void*),void*,struct proc*,int *,int ,int ,char*,...) ;
 int mtx_init (int *,char*,int *,int ) ;
 int panic (char*,int,...) ;
 int printf (char*,int) ;
 int snprintf (int ,int,char*,int) ;
 int swap_pager_swap_init () ;
 int uma_reclaim_worker ;
 int vm_ndomains ;
 int vm_oom_ratelim_mtx ;
 int vm_pageout_laundry_worker ;
 int vm_pageout_worker (void*) ;

__attribute__((used)) static void
vm_pageout(void)
{
 struct proc *p;
 struct thread *td;
 int error, first, i;

 p = curproc;
 td = curthread;

 mtx_init(&vm_oom_ratelim_mtx, "vmoomr", ((void*)0), MTX_DEF);
 swap_pager_swap_init();
 for (first = -1, i = 0; i < vm_ndomains; i++) {
  if (VM_DOMAIN_EMPTY(i)) {
   if (bootverbose)
    printf("domain %d empty; skipping pageout\n",
        i);
   continue;
  }
  if (first == -1)
   first = i;
  else {
   error = kthread_add(vm_pageout_worker,
       (void *)(uintptr_t)i, p, ((void*)0), 0, 0, "dom%d", i);
   if (error != 0)
    panic("starting pageout for domain %d: %d\n",
        i, error);
  }
  error = kthread_add(vm_pageout_laundry_worker,
      (void *)(uintptr_t)i, p, ((void*)0), 0, 0, "laundry: dom%d", i);
  if (error != 0)
   panic("starting laundry for domain %d: %d", i, error);
 }
 error = kthread_add(uma_reclaim_worker, ((void*)0), p, ((void*)0), 0, 0, "uma");
 if (error != 0)
  panic("starting uma_reclaim helper, error %d\n", error);

 snprintf(td->td_name, sizeof(td->td_name), "dom%d", first);
 vm_pageout_worker((void *)(uintptr_t)first);
}
