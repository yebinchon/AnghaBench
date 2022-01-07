
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_dg_data {unsigned long su_xid; } ;
typedef int SVCXPRT ;


 struct svc_dg_data* su_data (int *) ;

unsigned long
svcudp_get_xid(SVCXPRT *xprt)
{
 struct svc_dg_data *su;

 if (xprt == ((void*)0))
  return(0);
 su = su_data(xprt);
 return(su->su_xid);
}
