
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cf_conn {scalar_t__ strm_stat; scalar_t__ resid; scalar_t__ eor; int * mreq; } ;
typedef enum xprt_stat { ____Placeholder_xprt_stat } xprt_stat ;
struct TYPE_3__ {int xp_socket; scalar_t__ xp_p1; } ;
typedef TYPE_1__ SVCXPRT ;


 scalar_t__ XPRT_DIED ;
 int XPRT_IDLE ;
 int XPRT_MOREREQS ;
 scalar_t__ soreadable (int ) ;

__attribute__((used)) static enum xprt_stat
svc_vc_stat(SVCXPRT *xprt)
{
 struct cf_conn *cd;

 cd = (struct cf_conn *)(xprt->xp_p1);

 if (cd->strm_stat == XPRT_DIED)
  return (XPRT_DIED);

 if (cd->mreq != ((void*)0) && cd->resid == 0 && cd->eor)
  return (XPRT_MOREREQS);

 if (soreadable(xprt->xp_socket))
  return (XPRT_MOREREQS);

 return (XPRT_IDLE);
}
