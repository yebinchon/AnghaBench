
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xid ;
typedef int xdrproc_t ;
typedef scalar_t__ u_int ;
struct vnode {int dummy; } ;
struct timeval {int dummy; } ;
struct rpc_callextra {int dummy; } ;
struct nlm_host {int dummy; } ;
struct TYPE_7__ {int svid; } ;
struct TYPE_6__ {int stat; } ;
struct TYPE_5__ {int n_len; char* n_bytes; } ;
struct nlm4_res {int block; int exclusive; TYPE_3__ alock; TYPE_2__ stat; TYPE_1__ cookie; int state; int reclaim; } ;
struct nlm4_lockargs {int block; int exclusive; TYPE_3__ alock; TYPE_2__ stat; TYPE_1__ cookie; int state; int reclaim; } ;
struct flock {scalar_t__ l_type; } ;
typedef int rpcvers_t ;
typedef int res ;
typedef int off_t ;
typedef struct nlm4_res nlm4_cancargs ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int cancel ;
typedef int bool_t ;
typedef int args ;
typedef int CLIENT ;


 int CLNT_RELEASE (int *) ;
 int EINVAL ;
 int ENOLCK ;
 int EWOULDBLOCK ;
 int FALSE ;
 int F_WAIT ;
 scalar_t__ F_WRLCK ;
 int PCATCH ;
 int RPC_SUCCESS ;
 int TRUE ;
 scalar_t__ atomic_fetchadd_int (int *,int) ;
 int hz ;
 int memset (struct nlm4_res*,int ,int) ;
 int nlm4_blocked ;


 int nlm_cancel_rpc (int ,struct nlm4_res*,struct nlm4_res*,int *,struct rpc_callextra*,struct timeval) ;

 int nlm_deregister_wait_lock (void*) ;
 int * nlm_host_get_rpc (struct nlm_host*,int) ;
 int nlm_host_get_sysid (struct nlm_host*) ;
 int nlm_host_monitor (struct nlm_host*,int ) ;
 int nlm_init_lock (struct flock*,int,int,int ,size_t,void*,int ,TYPE_3__*,char*) ;
 int nlm_lock_rpc (int ,struct nlm4_res*,struct nlm4_res*,int *,struct rpc_callextra*,struct timeval) ;
 int nlm_map_status (int) ;
 int nlm_nsm_state ;
 int nlm_record_lock (struct vnode*,int,struct flock*,int ,int ,int ) ;
 void* nlm_register_wait_lock (TYPE_3__*,struct vnode*) ;
 int nlm_wait_lock (void*,int) ;
 int nlm_xid ;
 int pause (char*,int) ;
 int tsleep (struct nlm4_res*,int ,char*,int) ;
 int xdr_free (int ,struct nlm4_res*) ;
 scalar_t__ xdr_nlm4_res ;

__attribute__((used)) static int
nlm_setlock(struct nlm_host *host, struct rpc_callextra *ext,
    rpcvers_t vers, struct timeval *timo, int retries,
    struct vnode *vp, int op, struct flock *fl, int flags,
    int svid, size_t fhlen, void *fh, off_t size, bool_t reclaim)
{
 struct nlm4_lockargs args;
 char oh_space[32];
 struct nlm4_res res;
 u_int xid;
 CLIENT *client;
 enum clnt_stat stat;
 int retry, block, exclusive;
 void *wait_handle = ((void*)0);
 int error;

 memset(&args, 0, sizeof(args));
 memset(&res, 0, sizeof(res));

 block = (flags & F_WAIT) ? TRUE : FALSE;
 exclusive = (fl->l_type == F_WRLCK);

 error = nlm_init_lock(fl, flags, svid, vers, fhlen, fh, size,
     &args.alock, oh_space);
 if (error)
  return (error);
 args.block = block;
 args.exclusive = exclusive;
 args.reclaim = reclaim;
 args.state = nlm_nsm_state;

 retry = 5*hz;
 for (;;) {
  client = nlm_host_get_rpc(host, FALSE);
  if (!client)
   return (ENOLCK);

  if (block)
   wait_handle = nlm_register_wait_lock(&args.alock, vp);

  xid = atomic_fetchadd_int(&nlm_xid, 1);
  args.cookie.n_len = sizeof(xid);
  args.cookie.n_bytes = (char*) &xid;

  stat = nlm_lock_rpc(vers, &args, &res, client, ext, *timo);

  CLNT_RELEASE(client);

  if (stat != RPC_SUCCESS) {
   if (block)
    nlm_deregister_wait_lock(wait_handle);
   if (retries) {
    retries--;
    continue;
   }
   return (EINVAL);
  }




  xdr_free((xdrproc_t) xdr_nlm4_res, &res);

  if (block && res.stat.stat != nlm4_blocked)
   nlm_deregister_wait_lock(wait_handle);

  if (res.stat.stat == 130) {






   error = tsleep(&args, PCATCH, "nlmgrace", retry);
   if (error && error != EWOULDBLOCK)
    return (error);
   retry = 2*retry;
   if (retry > 30*hz)
    retry = 30*hz;
   continue;
  }

  if (block && res.stat.stat == nlm4_blocked) {







   error = nlm_wait_lock(wait_handle, retry);
   if (error == EWOULDBLOCK) {
    retry = 2*retry;
    if (retry > 30*hz)
     retry = 30*hz;
    continue;
   }
   if (error) {




    nlm4_cancargs cancel;

    memset(&cancel, 0, sizeof(cancel));

    xid = atomic_fetchadd_int(&nlm_xid, 1);
    cancel.cookie.n_len = sizeof(xid);
    cancel.cookie.n_bytes = (char*) &xid;
    cancel.block = block;
    cancel.exclusive = exclusive;
    cancel.alock = args.alock;

    do {
     client = nlm_host_get_rpc(host, FALSE);
     if (!client)

      return (ENOLCK);

     stat = nlm_cancel_rpc(vers, &cancel,
         &res, client, ext, *timo);

     CLNT_RELEASE(client);

     if (stat != RPC_SUCCESS) {
      pause("nlmcancel", 10*hz);
     }
    } while (stat != RPC_SUCCESS);




    xdr_free((xdrproc_t) xdr_nlm4_res, &res);

    switch (res.stat.stat) {
    case 128:







     error = 0;
     break;

    case 130:







     break;

    case 129:




     break;

    default:






     break;
    }

   }
  } else {
   error = nlm_map_status(res.stat.stat);
  }

  if (!error && !reclaim) {
   nlm_record_lock(vp, op, fl, args.alock.svid,
       nlm_host_get_sysid(host), size);
   nlm_host_monitor(host, 0);
  }

  return (error);
 }
}
