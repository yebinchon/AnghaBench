
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cf_conn {int * mreq; } ;
typedef enum xprt_stat { ____Placeholder_xprt_stat } xprt_stat ;
struct TYPE_3__ {scalar_t__ xp_p1; } ;
typedef TYPE_1__ SVCXPRT ;


 int XPRT_IDLE ;
 int XPRT_MOREREQS ;

__attribute__((used)) static enum xprt_stat
svc_vc_backchannel_stat(SVCXPRT *xprt)
{
 struct cf_conn *cd;

 cd = (struct cf_conn *)(xprt->xp_p1);

 if (cd->mreq != ((void*)0))
  return (XPRT_MOREREQS);

 return (XPRT_IDLE);
}
