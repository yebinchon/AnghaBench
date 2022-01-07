
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xid ;
typedef int xdrproc_t ;
typedef int u_int ;
struct vnode {int dummy; } ;
struct timeval {int dummy; } ;
struct rpc_callextra {int dummy; } ;
struct nlm_host {int dummy; } ;
struct TYPE_6__ {int svid; } ;
struct TYPE_5__ {scalar_t__ stat; } ;
struct TYPE_4__ {int n_len; char* n_bytes; } ;
struct nlm4_unlockargs {TYPE_3__ alock; TYPE_2__ stat; TYPE_1__ cookie; } ;
struct nlm4_res {TYPE_3__ alock; TYPE_2__ stat; TYPE_1__ cookie; } ;
struct flock {int dummy; } ;
typedef int rpcvers_t ;
typedef int res ;
typedef int off_t ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int args ;
typedef int CLIENT ;


 int CLNT_RELEASE (int *) ;
 int EINVAL ;
 int ENOLCK ;
 int EWOULDBLOCK ;
 int FALSE ;
 int F_REMOTE ;
 int PCATCH ;
 int RPC_SUCCESS ;
 int atomic_fetchadd_int (int *,int) ;
 int hz ;
 int memset (struct nlm4_unlockargs*,int ,int) ;
 scalar_t__ nlm4_denied_grace_period ;
 int * nlm_host_get_rpc (struct nlm_host*,int ) ;
 int nlm_host_get_sysid (struct nlm_host*) ;
 int nlm_init_lock (struct flock*,int,int,int ,size_t,void*,int ,TYPE_3__*,char*) ;
 int nlm_record_lock (struct vnode*,int,struct flock*,int ,int ,int ) ;
 int nlm_unlock_rpc (int ,struct nlm4_unlockargs*,struct nlm4_unlockargs*,int *,struct rpc_callextra*,struct timeval) ;
 int nlm_xid ;
 int tsleep (struct nlm4_unlockargs*,int ,char*,int) ;
 int xdr_free (int ,struct nlm4_unlockargs*) ;
 scalar_t__ xdr_nlm4_res ;

__attribute__((used)) static int
nlm_clearlock(struct nlm_host *host, struct rpc_callextra *ext,
    rpcvers_t vers, struct timeval *timo, int retries,
    struct vnode *vp, int op, struct flock *fl, int flags,
    int svid, size_t fhlen, void *fh, off_t size)
{
 struct nlm4_unlockargs args;
 char oh_space[32];
 struct nlm4_res res;
 u_int xid;
 CLIENT *client;
 enum clnt_stat stat;
 int error;

 memset(&args, 0, sizeof(args));
 memset(&res, 0, sizeof(res));

 error = nlm_init_lock(fl, flags, svid, vers, fhlen, fh, size,
     &args.alock, oh_space);
 if (error)
  return (error);

 for (;;) {
  client = nlm_host_get_rpc(host, FALSE);
  if (!client)
   return (ENOLCK);

  xid = atomic_fetchadd_int(&nlm_xid, 1);
  args.cookie.n_len = sizeof(xid);
  args.cookie.n_bytes = (char*) &xid;

  stat = nlm_unlock_rpc(vers, &args, &res, client, ext, *timo);

  CLNT_RELEASE(client);

  if (stat != RPC_SUCCESS) {
   if (retries) {
    retries--;
    continue;
   }
   return (EINVAL);
  }




  xdr_free((xdrproc_t) xdr_nlm4_res, &res);

  if (res.stat.stat == nlm4_denied_grace_period) {






   error = tsleep(&args, PCATCH, "nlmgrace", 5*hz);
   if (error && error != EWOULDBLOCK)
    return (error);
   continue;
  }







  if (!(flags & F_REMOTE))
   nlm_record_lock(vp, op, fl, args.alock.svid,
       nlm_host_get_sysid(host), size);

  return (0);
 }
}
