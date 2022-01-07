
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum xprt_stat { ____Placeholder_xprt_stat } xprt_stat ;
struct TYPE_3__ {int xp_socket; } ;
typedef TYPE_1__ SVCXPRT ;


 int XPRT_IDLE ;
 int XPRT_MOREREQS ;
 scalar_t__ soreadable (int ) ;

__attribute__((used)) static enum xprt_stat
svc_dg_stat(SVCXPRT *xprt)
{

 if (soreadable(xprt->xp_socket))
  return (XPRT_MOREREQS);

 return (XPRT_IDLE);
}
