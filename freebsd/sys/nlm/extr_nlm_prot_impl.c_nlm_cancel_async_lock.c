
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_host {int nh_lock; int nh_pending; int nh_sysid; int nh_caller_name; } ;
struct nlm_async_lock {int af_task; int af_cookie; int af_fl; int af_vp; struct nlm_host* af_host; } ;


 int F_CANCEL ;
 int F_REMOTE ;
 int MA_OWNED ;
 int NLM_DEBUG (int,char*,struct nlm_async_lock*,int ,int ) ;
 int TAILQ_REMOVE (int *,struct nlm_async_lock*,int ) ;
 int VOP_ADVLOCKASYNC (int ,int *,int ,int *,int ,int *,int *) ;
 int af_link ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nlm_free_async_lock (struct nlm_async_lock*) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static int
nlm_cancel_async_lock(struct nlm_async_lock *af)
{
 struct nlm_host *host = af->af_host;
 int error;

 mtx_assert(&host->nh_lock, MA_OWNED);

 mtx_unlock(&host->nh_lock);

 error = VOP_ADVLOCKASYNC(af->af_vp, ((void*)0), F_CANCEL, &af->af_fl,
     F_REMOTE, ((void*)0), &af->af_cookie);

 if (error) {




  taskqueue_drain(taskqueue_thread, &af->af_task);
 }

 mtx_lock(&host->nh_lock);

 if (!error) {
  NLM_DEBUG(2, "NLM: async lock %p for %s (sysid %d) "
      "cancelled\n", af, host->nh_caller_name, host->nh_sysid);





  TAILQ_REMOVE(&host->nh_pending, af, af_link);
  mtx_unlock(&host->nh_lock);
  nlm_free_async_lock(af);
  mtx_lock(&host->nh_lock);
 }

 return (error);
}
