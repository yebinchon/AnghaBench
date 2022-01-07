
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union nfsfh {int fh_bytes; } ;
struct vnode {TYPE_1__* v_mount; } ;
struct ucred {int dummy; } ;
struct timeval {int dummy; } ;
struct thread {struct ucred* td_ucred; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct rpc_callextra {int * rc_timers; struct nlm_feedback_arg* rc_feedback_arg; int rc_feedback; int * rc_auth; } ;
struct proc {int p_pid; } ;
struct nlm_host {int dummy; } ;
struct nlm_file_svid {int ns_svid; void* ns_active; int ns_refs; scalar_t__ ns_ucred; } ;
struct nlm_feedback_arg {struct nfsmount* nf_nmp; void* nf_printed; } ;
struct nfsmount {int nm_flag; int nm_retry; int (* nm_getinfo ) (struct vnode*,int ,size_t*,struct sockaddr_storage*,int*,int *,struct timeval*) ;int nm_hostname; int (* nm_vinvalbuf ) (struct vnode*,int ,struct thread*,int) ;} ;
struct flock {scalar_t__ l_start; scalar_t__ l_len; int l_pid; int l_type; } ;
typedef int rpcvers_t ;
typedef int off_t ;
typedef int ext ;
typedef scalar_t__ bool_t ;
struct TYPE_2__ {struct ucred* mnt_cred; } ;
typedef int AUTH ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int AUTH_DESTROY (int *) ;
 int EAGAIN ;
 int EINVAL ;
 void* FALSE ;
 int F_FLOCK ;

 int F_REMOTE ;


 int F_WAIT ;
 int F_WRLCK ;
 int INT_MAX ;
 int KASSERT (int,char*) ;
 int MNAMELEN ;
 int M_TEMP ;
 int M_WAITOK ;
 int NFSMNT_SOFT ;
 int NLM_VERS ;
 int NLM_VERS4 ;
 void* TRUE ;
 struct nfsmount* VFSTONFS (TYPE_1__*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_SAVE ;
 int * authunix_create (struct ucred*) ;
 scalar_t__ crdup (struct ucred*) ;
 int crfree (struct ucred*) ;
 int crhold (struct ucred*) ;
 struct thread* curthread ;
 int free (char*,int ) ;
 char* malloc (int ,int ,int ) ;
 int memset (struct rpc_callextra*,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nlm_clearlock (struct nlm_host*,struct rpc_callextra*,int ,struct timeval*,int,struct vnode*,int,struct flock*,int,int,size_t,int *,int ) ;
 int nlm_feedback ;
 struct nlm_host* nlm_find_host_by_name (char*,struct sockaddr*,int ) ;
 struct nlm_file_svid* nlm_find_svid (void*) ;
 int nlm_free_svid (struct nlm_file_svid*) ;
 int nlm_getlock (struct nlm_host*,struct rpc_callextra*,int ,struct timeval*,int,struct vnode*,int,struct flock*,int,int,size_t,int *,int ) ;
 int nlm_host_release (struct nlm_host*) ;
 int nlm_setlock (struct nlm_host*,struct rpc_callextra*,int ,struct timeval*,int,struct vnode*,int const,struct flock*,int,int,size_t,int *,int ,scalar_t__) ;
 int nlm_svid_lock ;
 int strcpy (char*,int ) ;
 int stub1 (struct vnode*,int ,struct thread*,int) ;
 int stub2 (struct vnode*,int ,size_t*,struct sockaddr_storage*,int*,int *,struct timeval*) ;

__attribute__((used)) static int
nlm_advlock_internal(struct vnode *vp, void *id, int op, struct flock *fl,
    int flags, bool_t reclaim, bool_t unlock_vp)
{
 struct thread *td = curthread;
 struct nfsmount *nmp;
 off_t size;
 size_t fhlen;
 union nfsfh fh;
 struct sockaddr *sa;
 struct sockaddr_storage ss;
 char *servername;
 struct timeval timo;
 int retries;
 rpcvers_t vers;
 struct nlm_host *host;
 struct rpc_callextra ext;
 struct nlm_feedback_arg nf;
 AUTH *auth;
 struct ucred *cred, *cred1;
 struct nlm_file_svid *ns;
 int svid;
 int error;
 int is_v3;

 ASSERT_VOP_LOCKED(vp, "nlm_advlock_1");

 servername = malloc(MNAMELEN, M_TEMP, M_WAITOK);
 nmp = VFSTONFS(vp->v_mount);





 if (op == 129 || op == 128)
  nmp->nm_vinvalbuf(vp, V_SAVE, td, 1);

 strcpy(servername, nmp->nm_hostname);
 nmp->nm_getinfo(vp, fh.fh_bytes, &fhlen, &ss, &is_v3, &size, &timo);
 sa = (struct sockaddr *) &ss;
 if (is_v3 != 0)
  vers = NLM_VERS4;
 else
  vers = NLM_VERS;

 if (nmp->nm_flag & NFSMNT_SOFT)
  retries = nmp->nm_retry;
 else
  retries = INT_MAX;







 cred = td->td_ucred;
 td->td_ucred = vp->v_mount->mnt_cred;
 crhold(td->td_ucred);
 if (unlock_vp)
  VOP_UNLOCK(vp, 0);

 host = nlm_find_host_by_name(servername, sa, vers);
 auth = authunix_create(cred);
 memset(&ext, 0, sizeof(ext));

 nf.nf_printed = FALSE;
 nf.nf_nmp = nmp;
 ext.rc_auth = auth;

 ext.rc_feedback = nlm_feedback;
 ext.rc_feedback_arg = &nf;
 ext.rc_timers = ((void*)0);

 ns = ((void*)0);
 if (flags & F_FLOCK) {
  ns = nlm_find_svid(id);
  KASSERT(fl->l_start == 0 && fl->l_len == 0,
      ("F_FLOCK lock requests must be whole-file locks"));
  if (!ns->ns_ucred) {




   ns->ns_ucred = crdup(cred);
  }
  svid = ns->ns_svid;
 } else if (flags & F_REMOTE) {





  svid = fl->l_pid;
 } else {
  svid = ((struct proc *) id)->p_pid;
 }

 switch(op) {
 case 129:
  if ((flags & (F_FLOCK|F_WAIT)) == (F_FLOCK|F_WAIT)
      && fl->l_type == F_WRLCK) {
   error = nlm_setlock(host, &ext, vers, &timo, retries,
       vp, 129, fl, flags & ~F_WAIT,
       svid, fhlen, &fh.fh_bytes, size, reclaim);
   if (error == EAGAIN) {
    fl->l_type = 128;
    error = nlm_clearlock(host, &ext, vers, &timo,
        retries, vp, 128, fl, flags,
        svid, fhlen, &fh.fh_bytes, size);
    fl->l_type = F_WRLCK;
    if (!error) {
     mtx_lock(&nlm_svid_lock);
     if (ns->ns_active) {
      ns->ns_refs--;
      ns->ns_active = FALSE;
     }
     mtx_unlock(&nlm_svid_lock);
     flags |= F_WAIT;
     error = nlm_setlock(host, &ext, vers,
         &timo, retries, vp, 129, fl,
         flags, svid, fhlen, &fh.fh_bytes,
         size, reclaim);
    }
   }
  } else {
   error = nlm_setlock(host, &ext, vers, &timo, retries,
       vp, op, fl, flags, svid, fhlen, &fh.fh_bytes,
       size, reclaim);
  }
  if (!error && ns) {
   mtx_lock(&nlm_svid_lock);
   if (!ns->ns_active) {
    ns->ns_refs++;
    ns->ns_active = TRUE;
   }
   mtx_unlock(&nlm_svid_lock);
  }
  break;

 case 128:
  error = nlm_clearlock(host, &ext, vers, &timo, retries,
      vp, op, fl, flags, svid, fhlen, &fh.fh_bytes, size);
  if (!error && ns) {
   mtx_lock(&nlm_svid_lock);
   if (ns->ns_active) {
    ns->ns_refs--;
    ns->ns_active = FALSE;
   }
   mtx_unlock(&nlm_svid_lock);
  }
  break;

 case 130:
  error = nlm_getlock(host, &ext, vers, &timo, retries,
      vp, op, fl, flags, svid, fhlen, &fh.fh_bytes, size);
  break;

 default:
  error = EINVAL;
  break;
 }

 if (ns)
  nlm_free_svid(ns);

 cred1 = td->td_ucred;
 td->td_ucred = cred;
 crfree(cred1);
 AUTH_DESTROY(auth);

 nlm_host_release(host);
 free(servername, M_TEMP);
 return (error);
}
