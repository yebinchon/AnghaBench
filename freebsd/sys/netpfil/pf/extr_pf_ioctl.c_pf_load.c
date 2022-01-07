
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GID_WHEEL ;
 int PF_NAME ;
 int UID_ROOT ;
 int kproc_create (int ,int *,int *,int ,int ,char*) ;
 int * make_dev (int *,int ,int ,int ,int,int ) ;
 int pf_cdevsw ;
 int * pf_dev ;
 int pf_end_lock ;
 scalar_t__ pf_end_threads ;
 int pf_ioctl_lock ;
 int pf_mtag_initialize () ;
 int pf_purge_proc ;
 int pf_purge_thread ;
 int pf_rules_lock ;
 int pfi_initialize () ;
 int rm_init (int *,char*) ;
 int sx_init (int *,char*) ;

__attribute__((used)) static int
pf_load(void)
{
 int error;

 rm_init(&pf_rules_lock, "pf rulesets");
 sx_init(&pf_ioctl_lock, "pf ioctl");
 sx_init(&pf_end_lock, "pf end thread");

 pf_mtag_initialize();

 pf_dev = make_dev(&pf_cdevsw, 0, UID_ROOT, GID_WHEEL, 0600, PF_NAME);
 if (pf_dev == ((void*)0))
  return (ENOMEM);

 pf_end_threads = 0;
 error = kproc_create(pf_purge_thread, ((void*)0), &pf_purge_proc, 0, 0, "pf purge");
 if (error != 0)
  return (error);

 pfi_initialize();

 return (0);
}
