
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct rpc_callextra {int rc_feedback_arg; int (* rc_feedback ) (int ,int ,int ) ;} ;
struct TYPE_9__ {int tv_sec; scalar_t__ tv_usec; } ;
struct rc_data {int rc_retries; int rc_lock; TYPE_2__* rc_client; TYPE_1__ rc_timeout; int rc_err; scalar_t__ rc_intr; scalar_t__ rc_closed; } ;
struct mbuf {int dummy; } ;
typedef int rpcproc_t ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_10__ {scalar_t__ cl_private; } ;
typedef TYPE_2__ CLIENT ;


 int CLNT_ACQUIRE (TYPE_2__*) ;
 int CLNT_CALL_MBUF (TYPE_2__*,struct rpc_callextra*,int ,struct mbuf*,struct mbuf**,struct timeval) ;
 int CLNT_GETERR (TYPE_2__*,int *) ;
 int CLNT_RELEASE (TYPE_2__*) ;
 int EINTR ;
 int ERESTART ;
 int FEEDBACK_RECONNECT ;
 int KASSERT (int ,char*) ;
 int PCATCH ;
 int RPC_CANTRECV ;
 int RPC_CANTSEND ;
 int RPC_FAILED ;
 int RPC_INTR ;
 int RPC_SUCCESS ;
 int RPC_SYSTEMERROR ;
 int RPC_TIMEDOUT ;
 int clnt_reconnect_connect (TYPE_2__*) ;
 int fake_wchan ;
 int hz ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (int ,int ,int ) ;
 int tsleep (int *,int ,char*,int ) ;

__attribute__((used)) static enum clnt_stat
clnt_reconnect_call(
 CLIENT *cl,
 struct rpc_callextra *ext,
 rpcproc_t proc,
 struct mbuf *args,
 struct mbuf **resultsp,
 struct timeval utimeout)
{
 struct rc_data *rc = (struct rc_data *)cl->cl_private;
 CLIENT *client;
 enum clnt_stat stat;
 int tries, error;

 tries = 0;
 do {
  mtx_lock(&rc->rc_lock);
  if (rc->rc_closed) {
   mtx_unlock(&rc->rc_lock);
   return (RPC_CANTSEND);
  }

  if (!rc->rc_client) {
   mtx_unlock(&rc->rc_lock);
   stat = clnt_reconnect_connect(cl);
   if (stat == RPC_SYSTEMERROR) {
    error = tsleep(&fake_wchan,
        rc->rc_intr ? PCATCH : 0, "rpccon", hz);
    if (error == EINTR || error == ERESTART)
     return (RPC_INTR);
    tries++;
    if (tries >= rc->rc_retries)
     return (stat);
    continue;
   }
   if (stat != RPC_SUCCESS)
    return (stat);
   mtx_lock(&rc->rc_lock);
  }

  if (!rc->rc_client) {
   mtx_unlock(&rc->rc_lock);
   stat = RPC_FAILED;
   continue;
  }
  CLNT_ACQUIRE(rc->rc_client);
  client = rc->rc_client;
  mtx_unlock(&rc->rc_lock);
  stat = CLNT_CALL_MBUF(client, ext, proc, args,
      resultsp, utimeout);

  if (stat != RPC_SUCCESS) {
   if (!ext)
    CLNT_GETERR(client, &rc->rc_err);
  }

  if (stat == RPC_TIMEDOUT) {




   if ((rc->rc_timeout.tv_sec == 0
    && rc->rc_timeout.tv_usec == 0)
       || (rc->rc_timeout.tv_sec == -1
    && utimeout.tv_sec == 0
    && utimeout.tv_usec == 0)) {
    CLNT_RELEASE(client);
    break;
   }
  }

  if (stat == RPC_TIMEDOUT || stat == RPC_CANTSEND
      || stat == RPC_CANTRECV) {
   tries++;
   if (tries >= rc->rc_retries) {
    CLNT_RELEASE(client);
    break;
   }

   if (ext && ext->rc_feedback)
    ext->rc_feedback(FEEDBACK_RECONNECT, proc,
        ext->rc_feedback_arg);

   mtx_lock(&rc->rc_lock);
   if (rc->rc_client == client) {
    rc->rc_client = ((void*)0);
    mtx_unlock(&rc->rc_lock);
    CLNT_RELEASE(client);
   } else {
    mtx_unlock(&rc->rc_lock);
   }
   CLNT_RELEASE(client);
  } else {
   CLNT_RELEASE(client);
   break;
  }
 } while (stat != RPC_SUCCESS);

 KASSERT(stat != RPC_SUCCESS || *resultsp,
     ("RPC_SUCCESS without reply"));

 return (stat);
}
