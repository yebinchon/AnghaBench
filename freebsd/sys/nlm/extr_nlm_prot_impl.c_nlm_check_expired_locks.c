
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct nlm_host {int nh_lock; int nh_finished; int nh_granted; } ;
struct TYPE_4__ {int cookie; } ;
struct nlm_async_lock {scalar_t__ af_expiretime; TYPE_2__ af_granted; TYPE_1__* af_host; } ;
struct TYPE_3__ {int nh_sysid; int nh_caller_name; } ;


 int NLM_DEBUG (int,char*,struct nlm_async_lock*,int ,int ,int ,int ) ;
 struct nlm_async_lock* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct nlm_async_lock*,int ) ;
 int af_link ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ng_cookie (int *) ;
 int ng_sysid (int *) ;
 int nlm_free_async_lock (struct nlm_async_lock*) ;
 scalar_t__ time_uptime ;

__attribute__((used)) static void
nlm_check_expired_locks(struct nlm_host *host)
{
 struct nlm_async_lock *af;
 time_t uptime = time_uptime;

 mtx_lock(&host->nh_lock);
 while ((af = TAILQ_FIRST(&host->nh_granted)) != ((void*)0)
     && uptime >= af->af_expiretime) {
  NLM_DEBUG(2, "NLM: async lock %p for %s (sysid %d) expired,"
      " cookie %d:%d\n", af, af->af_host->nh_caller_name,
      af->af_host->nh_sysid, ng_sysid(&af->af_granted.cookie),
      ng_cookie(&af->af_granted.cookie));
  TAILQ_REMOVE(&host->nh_granted, af, af_link);
  mtx_unlock(&host->nh_lock);
  nlm_free_async_lock(af);
  mtx_lock(&host->nh_lock);
 }
 while ((af = TAILQ_FIRST(&host->nh_finished)) != ((void*)0)) {
  TAILQ_REMOVE(&host->nh_finished, af, af_link);
  mtx_unlock(&host->nh_lock);
  nlm_free_async_lock(af);
  mtx_lock(&host->nh_lock);
 }
 mtx_unlock(&host->nh_lock);
}
