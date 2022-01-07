
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ xdrproc_t ;
struct svc_req {int rq_verf; int rq_xid; } ;
struct TYPE_4__ {scalar_t__ proc; int * where; } ;
struct TYPE_6__ {TYPE_1__ ar_results; int ar_stat; int ar_verf; } ;
struct TYPE_5__ {int rp_stat; } ;
struct rpc_msg {TYPE_3__ acpted_rply; TYPE_2__ rm_reply; int rm_direction; int rm_xid; } ;
struct mbuf {int dummy; } ;
typedef int bool_t ;


 int MSG_ACCEPTED ;
 int REPLY ;
 int SUCCESS ;
 int svc_sendreply_common (struct svc_req*,struct rpc_msg*,struct mbuf*) ;
 scalar_t__ xdr_void ;

bool_t
svc_sendreply_mbuf(struct svc_req *rqstp, struct mbuf *m)
{
 struct rpc_msg rply;

 rply.rm_xid = rqstp->rq_xid;
 rply.rm_direction = REPLY;
 rply.rm_reply.rp_stat = MSG_ACCEPTED;
 rply.acpted_rply.ar_verf = rqstp->rq_verf;
 rply.acpted_rply.ar_stat = SUCCESS;
 rply.acpted_rply.ar_results.where = ((void*)0);
 rply.acpted_rply.ar_results.proc = (xdrproc_t) xdr_void;

 return (svc_sendreply_common(rqstp, &rply, m));
}
