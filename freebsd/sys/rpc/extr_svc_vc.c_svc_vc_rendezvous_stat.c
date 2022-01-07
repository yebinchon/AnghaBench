
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum xprt_stat { ____Placeholder_xprt_stat } xprt_stat ;
typedef int SVCXPRT ;


 int XPRT_IDLE ;

__attribute__((used)) static enum xprt_stat
svc_vc_rendezvous_stat(SVCXPRT *xprt)
{

 return (XPRT_IDLE);
}
