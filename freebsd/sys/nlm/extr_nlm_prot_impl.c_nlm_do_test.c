
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vs ;
struct TYPE_8__ {int exclusive; int l_len; int l_offset; int svid; } ;
struct TYPE_9__ {TYPE_2__ holder; } ;
struct TYPE_10__ {TYPE_3__ nlm4_testrply_u; int stat; } ;
struct vfs_state {TYPE_4__ stat; int vs_vp; int cookie; } ;
struct svc_req {int rq_vers; } ;
struct nlm_host {int nh_sysid; int nh_caller_name; } ;
struct flock {int l_sysid; scalar_t__ l_type; int l_len; int l_start; int l_pid; int l_whence; } ;
typedef struct vfs_state nlm4_testres ;
struct TYPE_7__ {int svid; int l_len; int l_offset; int fh; int caller_name; } ;
struct TYPE_11__ {scalar_t__ exclusive; TYPE_1__ alock; int cookie; } ;
typedef TYPE_5__ nlm4_testargs ;
typedef int fhandle_t ;
typedef int accmode_t ;
typedef int CLIENT ;


 int ENOMEM ;
 int F_GETLK ;
 scalar_t__ F_RDLCK ;
 int F_REMOTE ;
 scalar_t__ F_UNLCK ;
 scalar_t__ F_WRLCK ;
 int M_RPC ;
 int NLM_DEBUG (int,char*,int ,int) ;
 int SEEK_SET ;
 int TRUE ;
 int VOP_ADVLOCK (int ,int *,int ,struct flock*,int ) ;
 int VREAD ;
 int VWRITE ;
 int memset (struct vfs_state*,int ,int) ;
 int nlm4_denied ;
 int nlm4_denied_grace_period ;
 int nlm4_denied_nolocks ;
 int nlm4_failed ;
 int nlm4_granted ;
 int nlm_check_expired_locks (struct nlm_host*) ;
 int nlm_convert_error (int) ;
 int nlm_convert_to_fhandle_t (int *,int *) ;
 int nlm_copy_netobj (int *,int *,int ) ;
 struct nlm_host* nlm_find_host_by_name (int ,int ,int ) ;
 struct nlm_host* nlm_find_host_by_sysid (int) ;
 int nlm_get_vfs_state (struct nlm_host*,struct svc_req*,int *,struct vfs_state*,int ) ;
 scalar_t__ nlm_grace_threshold ;
 int * nlm_host_get_rpc (struct nlm_host*,int ) ;
 int nlm_host_release (struct nlm_host*) ;
 int nlm_release_vfs_state (struct vfs_state*) ;
 int svc_getrpccaller (struct svc_req*) ;
 scalar_t__ time_uptime ;

int
nlm_do_test(nlm4_testargs *argp, nlm4_testres *result, struct svc_req *rqstp,
 CLIENT **rpcp)
{
 fhandle_t fh;
 struct vfs_state vs;
 struct nlm_host *host, *bhost;
 int error, sysid;
 struct flock fl;
 accmode_t accmode;

 memset(result, 0, sizeof(*result));
 memset(&vs, 0, sizeof(vs));

 host = nlm_find_host_by_name(argp->alock.caller_name,
     svc_getrpccaller(rqstp), rqstp->rq_vers);
 if (!host) {
  result->stat.stat = nlm4_denied_nolocks;
  return (ENOMEM);
 }

 NLM_DEBUG(3, "nlm_do_test(): caller_name = %s (sysid = %d)\n",
     host->nh_caller_name, host->nh_sysid);

 nlm_check_expired_locks(host);
 sysid = host->nh_sysid;

 nlm_convert_to_fhandle_t(&fh, &argp->alock.fh);
 nlm_copy_netobj(&result->cookie, &argp->cookie, M_RPC);

 if (time_uptime < nlm_grace_threshold) {
  result->stat.stat = nlm4_denied_grace_period;
  goto out;
 }

 accmode = argp->exclusive ? VWRITE : VREAD;
 error = nlm_get_vfs_state(host, rqstp, &fh, &vs, accmode);
 if (error) {
  result->stat.stat = nlm_convert_error(error);
  goto out;
 }

 fl.l_start = argp->alock.l_offset;
 fl.l_len = argp->alock.l_len;
 fl.l_pid = argp->alock.svid;
 fl.l_sysid = sysid;
 fl.l_whence = SEEK_SET;
 if (argp->exclusive)
  fl.l_type = F_WRLCK;
 else
  fl.l_type = F_RDLCK;
 error = VOP_ADVLOCK(vs.vs_vp, ((void*)0), F_GETLK, &fl, F_REMOTE);
 if (error) {
  result->stat.stat = nlm4_failed;
  goto out;
 }

 if (fl.l_type == F_UNLCK) {
  result->stat.stat = nlm4_granted;
 } else {
  result->stat.stat = nlm4_denied;
  result->stat.nlm4_testrply_u.holder.exclusive =
   (fl.l_type == F_WRLCK);
  result->stat.nlm4_testrply_u.holder.svid = fl.l_pid;
  bhost = nlm_find_host_by_sysid(fl.l_sysid);
  if (bhost) {
   nlm_host_release(bhost);
  }
  result->stat.nlm4_testrply_u.holder.l_offset = fl.l_start;
  result->stat.nlm4_testrply_u.holder.l_len = fl.l_len;
 }

out:
 nlm_release_vfs_state(&vs);
 if (rpcp)
  *rpcp = nlm_host_get_rpc(host, TRUE);
 nlm_host_release(host);
 return (0);
}
