
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct svc_req {int * rq_addr; int rq_reply_seq; int rq_auth; int * rq_args; TYPE_2__* rq_xprt; } ;
struct rpc_msg {int dummy; } ;
struct mbuf {int dummy; } ;
typedef int bool_t ;
struct TYPE_5__ {TYPE_1__* xp_pool; } ;
struct TYPE_4__ {scalar_t__ sp_rcache; } ;
typedef TYPE_2__ SVCXPRT ;


 int FALSE ;
 int M_SONAME ;
 int SVCAUTH_WRAP (int *,struct mbuf**) ;
 int SVC_REPLY (TYPE_2__*,struct rpc_msg*,int *,struct mbuf*,int *) ;
 int free (int *,int ) ;
 int m_freem (int *) ;
 int replay_setreply (scalar_t__,struct rpc_msg*,int ,struct mbuf*) ;
 int svc_getrpccaller (struct svc_req*) ;

__attribute__((used)) static bool_t
svc_sendreply_common(struct svc_req *rqstp, struct rpc_msg *rply,
    struct mbuf *body)
{
 SVCXPRT *xprt = rqstp->rq_xprt;
 bool_t ok;

 if (rqstp->rq_args) {
  m_freem(rqstp->rq_args);
  rqstp->rq_args = ((void*)0);
 }

 if (xprt->xp_pool->sp_rcache)
  replay_setreply(xprt->xp_pool->sp_rcache,
      rply, svc_getrpccaller(rqstp), body);

 if (!SVCAUTH_WRAP(&rqstp->rq_auth, &body))
  return (FALSE);

 ok = SVC_REPLY(xprt, rply, rqstp->rq_addr, body, &rqstp->rq_reply_seq);
 if (rqstp->rq_addr) {
  free(rqstp->rq_addr, M_SONAME);
  rqstp->rq_addr = ((void*)0);
 }

 return (ok);
}
