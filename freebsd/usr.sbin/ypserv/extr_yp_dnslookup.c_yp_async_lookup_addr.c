
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ypstat ;
typedef int uint32_t ;
typedef int u_char ;
typedef int type ;
struct svc_req {int rq_vers; TYPE_1__* rq_xprt; } ;
struct in_addr {int dummy; } ;
struct circleq_dnsentry {int prot_type; char* id; int addrlen; int addrtype; int name; int addr; int type; TYPE_1__* xprt; int client_addr; int xid; int * domain; int ypvers; int ttl; } ;
typedef int socklen_t ;
typedef int buf ;
struct TYPE_2__ {int xp_raddr; int xp_fd; } ;




 int BY_RPC_XID ;
 int DEF_TTL ;
 int IN6ADDRSZ ;
 int INADDRSZ ;
 int MAXHOSTNAMELEN ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_TYPE ;
 int TAILQ_INSERT_HEAD (int *,struct circleq_dnsentry*,int ) ;
 int T_PTR ;
 int YP_NOKEY ;
 int YP_TRUE ;
 int YP_YPERR ;
 scalar_t__ debug ;
 int errno ;
 int free (struct circleq_dnsentry*) ;
 int getsockopt (int ,int ,int ,int*,int*) ;
 int inet_aton (char*,struct in_addr*) ;
 int inet_pton (int,char*,int*) ;
 int links ;
 int memcpy (int ,int*,int) ;
 int pending ;
 int qhead ;
 int snprintf (char*,int,char*,int,int,int,int) ;
 int sprintf (char*,char*,int,int) ;
 int strdup (char*) ;
 char* strerror (int ) ;
 int strlcat (char*,char*,int) ;
 int svcudp_get_xid (TYPE_1__*) ;
 int yp_error (char*,...) ;
 int * yp_find_dnsqent (int ,int ) ;
 struct circleq_dnsentry* yp_malloc_dnsent () ;
 int yp_prune_dnsq () ;
 char* yp_send_dns_query (char*,int ) ;

ypstat
yp_async_lookup_addr(struct svc_req *rqstp, char *addr, int af)
{
 register struct circleq_dnsentry *q;
 char buf[MAXHOSTNAMELEN], *qp;
 uint32_t abuf[4];
 u_char *uaddr = (u_char *)abuf;
 socklen_t len;
 int type, n;


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

 switch (af) {
 case 129:
  if (inet_aton(addr, (struct in_addr *)uaddr) != 1)
   return(YP_NOKEY);
  snprintf(buf, sizeof(buf), "%u.%u.%u.%u.in-addr.arpa",
      (uaddr[3] & 0xff), (uaddr[2] & 0xff),
      (uaddr[1] & 0xff), (uaddr[0] & 0xff));
  len = INADDRSZ;
  break;
 case 128:
  if (inet_pton(af, addr, uaddr) != 1)
   return(YP_NOKEY);
  qp = buf;
  for (n = IN6ADDRSZ - 1; n >= 0; n--) {
   qp += (size_t)sprintf(qp, "%x.%x.", uaddr[n] & 0xf,
       (uaddr[n] >> 4) & 0xf);
  }
  strlcat(buf, "ip6.arpa", sizeof(buf));
  len = IN6ADDRSZ;
  break;
 default:
  return(YP_YPERR);
 }

 if ((q = yp_malloc_dnsent()) == ((void*)0))
  return(YP_YPERR);

 if (debug)
  yp_error("DNS address is: %s", buf);

 q->type = T_PTR;
 q->ttl = DEF_TTL;
 q->xprt = rqstp->rq_xprt;
 q->ypvers = rqstp->rq_vers;
 q->domain = ((void*)0);
 q->prot_type = type;
 if (q->prot_type == SOCK_DGRAM)
  q->xid = svcudp_get_xid(q->xprt);
 q->client_addr = q->xprt->xp_raddr;
 q->id = yp_send_dns_query(buf, q->type);

 if (q->id == 0) {
  yp_error("DNS query failed");
  free(q);
  return(YP_YPERR);
 }

 memcpy(q->addr, uaddr, len);
 q->addrlen = len;
 q->addrtype = af;
 q->name = strdup(buf);
 TAILQ_INSERT_HEAD(&qhead, q, links);
 pending++;

 if (debug)
  yp_error("queueing async DNS address lookup (%lu)", q->id);

 yp_prune_dnsq();
 return(YP_TRUE);
}
