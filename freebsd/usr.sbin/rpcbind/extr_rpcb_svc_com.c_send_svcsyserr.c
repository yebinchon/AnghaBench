
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct finfo {scalar_t__ reply_type; } ;
typedef int SVCXPRT ;


 scalar_t__ RPCBPROC_INDIRECT ;
 int svcerr_systemerr (int *) ;
 int xprt_set_caller (int *,struct finfo*) ;

__attribute__((used)) static void
send_svcsyserr(SVCXPRT *xprt, struct finfo *fi)
{
 if (fi->reply_type == RPCBPROC_INDIRECT) {
  xprt_set_caller(xprt, fi);
  svcerr_systemerr(xprt);
 }
 return;
}
