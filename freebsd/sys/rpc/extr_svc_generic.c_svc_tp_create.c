
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netbuf {struct netbuf* buf; } ;
struct t_bind {int qlen; struct netbuf addr; } ;
struct netconfig {char* nc_netid; } ;
typedef scalar_t__ rpcvers_t ;
typedef scalar_t__ rpcprog_t ;
typedef int SVCXPRT ;
typedef int SVCPOOL ;


 scalar_t__ FALSE ;
 int M_RPC ;
 int SVC_RELEASE (int *) ;
 int free (struct netbuf*,int ) ;
 int printf (char*,unsigned int,unsigned int,...) ;
 int rpcb_unset (scalar_t__,scalar_t__,struct netconfig*) ;
 scalar_t__ svc_reg (int *,scalar_t__,scalar_t__,void (*) (struct svc_req*,int *),struct netconfig const*) ;
 int * svc_tli_create (int *,int *,struct netconfig const*,struct t_bind*,int ,int ) ;
 struct netbuf* uaddr2taddr (struct netconfig const*,char const*) ;
 int xprt_unregister (int *) ;

SVCXPRT *
svc_tp_create(
 SVCPOOL *pool,
 void (*dispatch)(struct svc_req *, SVCXPRT *),
 rpcprog_t prognum,
 rpcvers_t versnum,
 const char *uaddr,
 const struct netconfig *nconf)
{
 struct netconfig nconfcopy;
 struct netbuf *taddr;
 struct t_bind bind;
 SVCXPRT *xprt;

 if (nconf == ((void*)0)) {
  printf(
 "svc_tp_create: invalid netconfig structure for prog %u vers %u\n",
    (unsigned)prognum, (unsigned)versnum);
  return (((void*)0));
 }
 if (uaddr) {
  taddr = uaddr2taddr(nconf, uaddr);
  bind.addr = *taddr;
  free(taddr, M_RPC);
  bind.qlen = -1;
  xprt = svc_tli_create(pool, ((void*)0), nconf, &bind, 0, 0);
  free(bind.addr.buf, M_RPC);
 } else {
  xprt = svc_tli_create(pool, ((void*)0), nconf, ((void*)0), 0, 0);
 }
 if (xprt == ((void*)0)) {
  return (((void*)0));
 }

 nconfcopy = *nconf;
 (void) rpcb_unset(prognum, versnum, &nconfcopy);
 if (svc_reg(xprt, prognum, versnum, dispatch, nconf) == FALSE) {
  printf(
  "svc_tp_create: Could not register prog %u vers %u on %s\n",
    (unsigned)prognum, (unsigned)versnum,
    nconf->nc_netid);
  xprt_unregister(xprt);
  SVC_RELEASE(xprt);
  return (((void*)0));
 }
 return (xprt);
}
