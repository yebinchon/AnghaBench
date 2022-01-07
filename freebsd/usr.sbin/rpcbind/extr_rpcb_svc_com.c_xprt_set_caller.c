
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct finfo {int caller_xid; int caller_addr; } ;
typedef int SVCXPRT ;


 int * __rpcb_get_dg_xidp (int *) ;
 int netbuf_copybuf (int ,int ) ;
 int svc_getrpccaller (int *) ;

__attribute__((used)) static void
xprt_set_caller(SVCXPRT *xprt, struct finfo *fi)
{
 u_int32_t *xidp;

 netbuf_copybuf(svc_getrpccaller(xprt), fi->caller_addr);
 xidp = __rpcb_get_dg_xidp(xprt);
 *xidp = fi->caller_xid;
}
