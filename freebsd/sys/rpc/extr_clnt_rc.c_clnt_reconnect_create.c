
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sockaddr {scalar_t__ sa_len; } ;
struct TYPE_8__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_7__ {int tv_sec; int tv_usec; } ;
struct rc_data {size_t rc_sendsz; size_t rc_recvsz; char* rc_waitchan; int * rc_client; int rc_ucred; void* rc_closed; void* rc_connecting; scalar_t__ rc_intr; void* rc_privport; int rc_retries; TYPE_2__ rc_retry; TYPE_1__ rc_timeout; int rc_vers; int rc_prog; struct netconfig* rc_nconf; int rc_addr; int rc_lock; } ;
struct netconfig {int dummy; } ;
typedef int rpcvers_t ;
typedef int rpcprog_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_11__ {int td_ucred; } ;
struct TYPE_10__ {int cf_stat; } ;
struct TYPE_9__ {int cl_refs; int * cl_netid; int * cl_tp; int cl_auth; scalar_t__ cl_private; int * cl_ops; } ;
typedef TYPE_3__ CLIENT ;


 void* FALSE ;
 int INT_MAX ;
 int MTX_DEF ;
 int RPC_UNKNOWNADDR ;
 int authnone_create () ;
 int clnt_reconnect_ops ;
 int crdup (int ) ;
 TYPE_5__* curthread ;
 void* mem_alloc (int) ;
 int memcpy (int *,struct sockaddr*,size_t) ;
 int mtx_init (int *,char*,int *,int ) ;
 TYPE_4__ rpc_createerr ;

CLIENT *
clnt_reconnect_create(
 struct netconfig *nconf,
 struct sockaddr *svcaddr,
 rpcprog_t program,
 rpcvers_t version,
 size_t sendsz,
 size_t recvsz)
{
 CLIENT *cl = ((void*)0);
 struct rc_data *rc = ((void*)0);

 if (svcaddr == ((void*)0)) {
  rpc_createerr.cf_stat = RPC_UNKNOWNADDR;
  return (((void*)0));
 }

 cl = mem_alloc(sizeof (CLIENT));
 rc = mem_alloc(sizeof (*rc));
 mtx_init(&rc->rc_lock, "rc->rc_lock", ((void*)0), MTX_DEF);
 (void) memcpy(&rc->rc_addr, svcaddr, (size_t)svcaddr->sa_len);
 rc->rc_nconf = nconf;
 rc->rc_prog = program;
 rc->rc_vers = version;
 rc->rc_sendsz = sendsz;
 rc->rc_recvsz = recvsz;
 rc->rc_timeout.tv_sec = -1;
 rc->rc_timeout.tv_usec = -1;
 rc->rc_retry.tv_sec = 3;
 rc->rc_retry.tv_usec = 0;
 rc->rc_retries = INT_MAX;
 rc->rc_privport = FALSE;
 rc->rc_waitchan = "rpcrecv";
 rc->rc_intr = 0;
 rc->rc_connecting = FALSE;
 rc->rc_closed = FALSE;
 rc->rc_ucred = crdup(curthread->td_ucred);
 rc->rc_client = ((void*)0);

 cl->cl_refs = 1;
 cl->cl_ops = &clnt_reconnect_ops;
 cl->cl_private = (caddr_t)(void *)rc;
 cl->cl_auth = authnone_create();
 cl->cl_tp = ((void*)0);
 cl->cl_netid = ((void*)0);
 return (cl);
}
