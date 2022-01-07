
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ypstat ;
typedef int type ;
struct svc_req {int rq_vers; TYPE_1__* rq_xprt; } ;
struct circleq_dnsentry {int prot_type; scalar_t__ id; int name; int type; int domain; TYPE_1__* xprt; int client_addr; int xid; int ypvers; int ttl; } ;
typedef int socklen_t ;
struct TYPE_4__ {int dnsrch; } ;
struct TYPE_3__ {int xp_raddr; int xp_fd; } ;


 int AF_INET ;
 int BY_RPC_XID ;
 int DEF_TTL ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_TYPE ;
 int TAILQ_INSERT_HEAD (int *,struct circleq_dnsentry*,int ) ;
 int T_A ;
 int T_AAAA ;
 int YP_TRUE ;
 int YP_YPERR ;
 TYPE_2__ _res ;
 scalar_t__ debug ;
 int errno ;
 int free (struct circleq_dnsentry*) ;
 int getsockopt (int ,int ,int ,int*,int*) ;
 int links ;
 int pending ;
 int qhead ;
 int strdup (char*) ;
 scalar_t__ strerror (int ) ;
 int svcudp_get_xid (TYPE_1__*) ;
 int yp_error (char*,...) ;
 int * yp_find_dnsqent (int ,int ) ;
 struct circleq_dnsentry* yp_malloc_dnsent () ;
 int yp_prune_dnsq () ;
 scalar_t__ yp_send_dns_query (char*,int ) ;

ypstat
yp_async_lookup_name(struct svc_req *rqstp, char *name, int af)
{
 register struct circleq_dnsentry *q;
 socklen_t len;
 int type;


 type = -1;
 len = sizeof(type);
 if (getsockopt(rqstp->rq_xprt->xp_fd, SOL_SOCKET,
     SO_TYPE, &type, &len) == -1) {
  yp_error("getsockopt failed: %s", strerror(errno));
  return(YP_YPERR);
 }


 if (type == SOCK_DGRAM &&
     yp_find_dnsqent(svcudp_get_xid(rqstp->rq_xprt),BY_RPC_XID) != ((void*)0))
  return(YP_TRUE);

 if ((q = yp_malloc_dnsent()) == ((void*)0))
  return(YP_YPERR);

 q->type = (af == AF_INET) ? T_A : T_AAAA;
 q->ttl = DEF_TTL;
 q->xprt = rqstp->rq_xprt;
 q->ypvers = rqstp->rq_vers;
 q->prot_type = type;
 if (q->prot_type == SOCK_DGRAM)
  q->xid = svcudp_get_xid(q->xprt);
 q->client_addr = q->xprt->xp_raddr;
 q->domain = _res.dnsrch;
 q->id = yp_send_dns_query(name, q->type);

 if (q->id == 0) {
  yp_error("DNS query failed");
  free(q);
  return(YP_YPERR);
 }

 q->name = strdup(name);
 TAILQ_INSERT_HEAD(&qhead, q, links);
 pending++;

 if (debug)
  yp_error("queueing async DNS name lookup (%lu)", q->id);

 yp_prune_dnsq();
 return(YP_TRUE);
}
