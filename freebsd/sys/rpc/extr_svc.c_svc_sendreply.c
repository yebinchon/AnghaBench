
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ (* xdrproc_t ) (int *,void*) ;
struct svc_req {int rq_verf; int rq_xid; } ;
struct TYPE_5__ {scalar_t__ (* proc ) (int *,void*) ;int * where; } ;
struct TYPE_6__ {TYPE_2__ ar_results; int ar_stat; int ar_verf; } ;
struct TYPE_4__ {int rp_stat; } ;
struct rpc_msg {TYPE_3__ acpted_rply; TYPE_1__ rm_reply; int rm_direction; int rm_xid; } ;
struct mbuf {int dummy; } ;
typedef scalar_t__ bool_t ;
typedef int XDR ;


 scalar_t__ FALSE ;
 int MSG_ACCEPTED ;
 int MT_DATA ;
 int M_WAITOK ;
 int REPLY ;
 int SUCCESS ;
 int XDR_DESTROY (int *) ;
 int XDR_ENCODE ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_getcl (int ,int ,int ) ;
 scalar_t__ svc_sendreply_common (struct svc_req*,struct rpc_msg*,struct mbuf*) ;
 scalar_t__ xdr_void ;
 int xdrmbuf_create (int *,struct mbuf*,int ) ;

bool_t
svc_sendreply(struct svc_req *rqstp, xdrproc_t xdr_results, void * xdr_location)
{
 struct rpc_msg rply;
 struct mbuf *m;
 XDR xdrs;
 bool_t ok;

 rply.rm_xid = rqstp->rq_xid;
 rply.rm_direction = REPLY;
 rply.rm_reply.rp_stat = MSG_ACCEPTED;
 rply.acpted_rply.ar_verf = rqstp->rq_verf;
 rply.acpted_rply.ar_stat = SUCCESS;
 rply.acpted_rply.ar_results.where = ((void*)0);
 rply.acpted_rply.ar_results.proc = (xdrproc_t) xdr_void;

 m = m_getcl(M_WAITOK, MT_DATA, 0);
 xdrmbuf_create(&xdrs, m, XDR_ENCODE);
 ok = xdr_results(&xdrs, xdr_location);
 XDR_DESTROY(&xdrs);

 if (ok) {
  return (svc_sendreply_common(rqstp, &rply, m));
 } else {
  m_freem(m);
  return (FALSE);
 }
}
