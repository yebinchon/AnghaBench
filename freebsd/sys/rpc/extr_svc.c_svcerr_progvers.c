
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint32_t ;
struct svc_req {int rq_verf; int rq_xid; TYPE_5__* rq_xprt; } ;
struct TYPE_7__ {void* high; void* low; } ;
struct TYPE_8__ {TYPE_2__ ar_vers; int ar_stat; int ar_verf; } ;
struct TYPE_6__ {int rp_stat; } ;
struct rpc_msg {TYPE_3__ acpted_rply; TYPE_1__ rm_reply; int rm_direction; int rm_xid; } ;
typedef scalar_t__ rpcvers_t ;
struct TYPE_10__ {TYPE_4__* xp_pool; } ;
struct TYPE_9__ {scalar_t__ sp_rcache; } ;
typedef TYPE_5__ SVCXPRT ;


 int MSG_ACCEPTED ;
 int PROG_MISMATCH ;
 int REPLY ;
 int replay_setreply (scalar_t__,struct rpc_msg*,int ,int *) ;
 int svc_getrpccaller (struct svc_req*) ;
 int svc_sendreply_common (struct svc_req*,struct rpc_msg*,int *) ;

void
svcerr_progvers(struct svc_req *rqstp, rpcvers_t low_vers, rpcvers_t high_vers)
{
 SVCXPRT *xprt = rqstp->rq_xprt;
 struct rpc_msg rply;

 rply.rm_xid = rqstp->rq_xid;
 rply.rm_direction = REPLY;
 rply.rm_reply.rp_stat = MSG_ACCEPTED;
 rply.acpted_rply.ar_verf = rqstp->rq_verf;
 rply.acpted_rply.ar_stat = PROG_MISMATCH;
 rply.acpted_rply.ar_vers.low = (uint32_t)low_vers;
 rply.acpted_rply.ar_vers.high = (uint32_t)high_vers;

 if (xprt->xp_pool->sp_rcache)
  replay_setreply(xprt->xp_pool->sp_rcache,
      &rply, svc_getrpccaller(rqstp), ((void*)0));

 svc_sendreply_common(rqstp, &rply, ((void*)0));
}
