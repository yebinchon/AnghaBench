
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct nlm_host {int nh_sysid; int nh_state; scalar_t__ nh_monstate; int nh_caller_name; int nh_refs; int nh_lock; int nh_pending; } ;
struct nlm_async_lock {int dummy; } ;


 int NLM_DEBUG (int,char*,int ,int,int) ;
 scalar_t__ NLM_RECOVERING ;
 int NLM_SYSID_CLIENT ;
 struct nlm_async_lock* TAILQ_FIRST (int *) ;
 int curproc ;
 int kthread_add (int ,struct nlm_host*,int ,struct thread**,int ,int ,char*,int ) ;
 int lf_clearremotesys (int) ;
 scalar_t__ lf_countlocks (int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nlm_cancel_async_lock (struct nlm_async_lock*) ;
 int nlm_check_expired_locks (struct nlm_host*) ;
 int nlm_client_recovery_start ;
 int refcount_acquire (int *) ;

__attribute__((used)) static void
nlm_host_notify(struct nlm_host *host, int newstate)
{
 struct nlm_async_lock *af;

 if (newstate) {
  NLM_DEBUG(1, "NLM: host %s (sysid %d) rebooted, new "
      "state is %d\n", host->nh_caller_name,
      host->nh_sysid, newstate);
 }




 mtx_lock(&host->nh_lock);
 while ((af = TAILQ_FIRST(&host->nh_pending)) != ((void*)0)) {




  nlm_cancel_async_lock(af);
 }
 mtx_unlock(&host->nh_lock);
 nlm_check_expired_locks(host);




 lf_clearremotesys(host->nh_sysid);
 host->nh_state = newstate;






 if (newstate != 0
     && host->nh_monstate != NLM_RECOVERING
     && lf_countlocks(NLM_SYSID_CLIENT | host->nh_sysid) > 0) {
  struct thread *td;
  host->nh_monstate = NLM_RECOVERING;
  refcount_acquire(&host->nh_refs);
  kthread_add(nlm_client_recovery_start, host, curproc, &td, 0, 0,
      "NFS lock recovery for %s", host->nh_caller_name);
 }
}
