
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vs ;
struct TYPE_6__ {int stat; } ;
struct vfs_state {TYPE_2__ stat; int vs_vp; int cookie; } ;
struct svc_req {int rq_vers; } ;
struct nlm_host {int nh_sysid; int nh_caller_name; } ;
struct flock {int l_sysid; int l_type; int l_whence; int l_pid; int l_len; int l_start; } ;
struct TYPE_5__ {int svid; int l_len; int l_offset; int fh; int caller_name; } ;
struct TYPE_7__ {TYPE_1__ alock; int cookie; } ;
typedef TYPE_3__ nlm4_unlockargs ;
typedef struct vfs_state nlm4_res ;
typedef int fhandle_t ;
typedef int accmode_t ;
typedef int CLIENT ;


 int ENOMEM ;
 int F_REMOTE ;
 int F_UNLCK ;
 int M_RPC ;
 int NLM_DEBUG (int,char*,int ,int) ;
 int SEEK_SET ;
 int TRUE ;
 int VOP_ADVLOCK (int ,int *,int ,struct flock*,int ) ;
 int memset (struct vfs_state*,int ,int) ;
 int nlm4_denied_grace_period ;
 int nlm4_denied_nolocks ;
 int nlm4_granted ;
 int nlm_check_expired_locks (struct nlm_host*) ;
 int nlm_convert_error (int) ;
 int nlm_convert_to_fhandle_t (int *,int *) ;
 int nlm_copy_netobj (int *,int *,int ) ;
 struct nlm_host* nlm_find_host_by_name (int ,int ,int ) ;
 int nlm_get_vfs_state (struct nlm_host*,struct svc_req*,int *,struct vfs_state*,int ) ;
 scalar_t__ nlm_grace_threshold ;
 int * nlm_host_get_rpc (struct nlm_host*,int ) ;
 int nlm_host_release (struct nlm_host*) ;
 int nlm_release_vfs_state (struct vfs_state*) ;
 int svc_getrpccaller (struct svc_req*) ;
 scalar_t__ time_uptime ;

int
nlm_do_unlock(nlm4_unlockargs *argp, nlm4_res *result, struct svc_req *rqstp,
    CLIENT **rpcp)
{
 fhandle_t fh;
 struct vfs_state vs;
 struct nlm_host *host;
 int error, sysid;
 struct flock fl;

 memset(result, 0, sizeof(*result));
 memset(&vs, 0, sizeof(vs));

 host = nlm_find_host_by_name(argp->alock.caller_name,
     svc_getrpccaller(rqstp), rqstp->rq_vers);
 if (!host) {
  result->stat.stat = nlm4_denied_nolocks;
  return (ENOMEM);
 }

 NLM_DEBUG(3, "nlm_do_unlock(): caller_name = %s (sysid = %d)\n",
     host->nh_caller_name, host->nh_sysid);

 nlm_check_expired_locks(host);
 sysid = host->nh_sysid;

 nlm_convert_to_fhandle_t(&fh, &argp->alock.fh);
 nlm_copy_netobj(&result->cookie, &argp->cookie, M_RPC);

 if (time_uptime < nlm_grace_threshold) {
  result->stat.stat = nlm4_denied_grace_period;
  goto out;
 }

 error = nlm_get_vfs_state(host, rqstp, &fh, &vs, (accmode_t)0);
 if (error) {
  result->stat.stat = nlm_convert_error(error);
  goto out;
 }

 fl.l_start = argp->alock.l_offset;
 fl.l_len = argp->alock.l_len;
 fl.l_pid = argp->alock.svid;
 fl.l_sysid = sysid;
 fl.l_whence = SEEK_SET;
 fl.l_type = F_UNLCK;
 error = VOP_ADVLOCK(vs.vs_vp, ((void*)0), F_UNLCK, &fl, F_REMOTE);





 result->stat.stat = nlm4_granted;

out:
 nlm_release_vfs_state(&vs);
 if (rpcp)
  *rpcp = nlm_host_get_rpc(host, TRUE);
 nlm_host_release(host);
 return (0);
}
