
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rpc_callextra {int rc_auth; } ;
struct TYPE_8__ {int l_len; int l_offset; int svid; int oh; int fh; int caller_name; } ;
struct TYPE_11__ {TYPE_2__ alock; int exclusive; int cookie; } ;
struct nlm_async_lock {TYPE_3__* af_host; scalar_t__ af_expiretime; int af_rpc; TYPE_6__ af_granted; } ;
struct TYPE_7__ {int l_len; int l_offset; int svid; int oh; int fh; int caller_name; } ;
struct TYPE_10__ {TYPE_1__ alock; int exclusive; int cookie; } ;
typedef TYPE_4__ nlm_testargs ;
typedef int ext ;
struct TYPE_9__ {scalar_t__ nh_vers; int nh_lock; int nh_granted; int nh_pending; int nh_sysid; int nh_caller_name; } ;


 int NLM_DEBUG (int,char*,struct nlm_async_lock*,int ,int ,int ,int ) ;
 scalar_t__ NLM_EXPIRE_TIMEOUT ;
 scalar_t__ NLM_VERS4 ;
 int TAILQ_INSERT_TAIL (int *,struct nlm_async_lock*,int ) ;
 int TAILQ_REMOVE (int *,struct nlm_async_lock*,int ) ;
 int af_link ;
 int memset (struct rpc_callextra*,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ng_cookie (int *) ;
 int ng_sysid (int *) ;
 int nlm4_granted_msg_4 (TYPE_6__*,int *,int ,struct rpc_callextra*,int ) ;
 int nlm_auth ;
 int nlm_granted_msg_1 (TYPE_4__*,int *,int ,struct rpc_callextra*,int ) ;
 int nlm_zero_tv ;
 scalar_t__ time_uptime ;

__attribute__((used)) static void
nlm_lock_callback(void *arg, int pending)
{
 struct nlm_async_lock *af = (struct nlm_async_lock *) arg;
 struct rpc_callextra ext;

 NLM_DEBUG(2, "NLM: async lock %p for %s (sysid %d) granted,"
     " cookie %d:%d\n", af, af->af_host->nh_caller_name,
     af->af_host->nh_sysid, ng_sysid(&af->af_granted.cookie),
     ng_cookie(&af->af_granted.cookie));
 memset(&ext, 0, sizeof(ext));
 ext.rc_auth = nlm_auth;
 if (af->af_host->nh_vers == NLM_VERS4) {
  nlm4_granted_msg_4(&af->af_granted,
      ((void*)0), af->af_rpc, &ext, nlm_zero_tv);
 } else {



  nlm_testargs granted;
  granted.cookie = af->af_granted.cookie;
  granted.exclusive = af->af_granted.exclusive;
  granted.alock.caller_name =
   af->af_granted.alock.caller_name;
  granted.alock.fh = af->af_granted.alock.fh;
  granted.alock.oh = af->af_granted.alock.oh;
  granted.alock.svid = af->af_granted.alock.svid;
  granted.alock.l_offset =
   af->af_granted.alock.l_offset;
  granted.alock.l_len =
   af->af_granted.alock.l_len;

  nlm_granted_msg_1(&granted,
      ((void*)0), af->af_rpc, &ext, nlm_zero_tv);
 }




 af->af_expiretime = time_uptime + NLM_EXPIRE_TIMEOUT;
 mtx_lock(&af->af_host->nh_lock);
 TAILQ_REMOVE(&af->af_host->nh_pending, af, af_link);
 TAILQ_INSERT_TAIL(&af->af_host->nh_granted, af, af_link);
 mtx_unlock(&af->af_host->nh_lock);
}
