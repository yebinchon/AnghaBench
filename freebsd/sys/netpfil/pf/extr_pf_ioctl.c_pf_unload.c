
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_dev (int *) ;
 int * pf_dev ;
 int pf_end_lock ;
 int pf_end_threads ;
 int pf_ioctl_lock ;
 int pf_purge_proc ;
 int pf_purge_thread ;
 int pf_rules_lock ;
 int pfi_cleanup () ;
 int rm_destroy (int *) ;
 int sx_destroy (int *) ;
 int sx_sleep (int ,int *,int ,char*,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int wakeup_one (int ) ;

__attribute__((used)) static void
pf_unload(void)
{

 sx_xlock(&pf_end_lock);
 pf_end_threads = 1;
 while (pf_end_threads < 2) {
  wakeup_one(pf_purge_thread);
  sx_sleep(pf_purge_proc, &pf_end_lock, 0, "pftmo", 0);
 }
 sx_xunlock(&pf_end_lock);

 if (pf_dev != ((void*)0))
  destroy_dev(pf_dev);

 pfi_cleanup();

 rm_destroy(&pf_rules_lock);
 sx_destroy(&pf_ioctl_lock);
 sx_destroy(&pf_end_lock);
}
