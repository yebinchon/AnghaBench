
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_dg_data {unsigned long su_xid; } ;
typedef int SVCXPRT ;


 struct svc_dg_data* su_data (int *) ;

unsigned long
svcudp_set_xid(SVCXPRT *xprt, unsigned long xid)
{
 struct svc_dg_data *su;
 unsigned long old_xid;

 if (xprt == ((void*)0))
  return(0);
 su = su_data(xprt);
 old_xid = su->su_xid;
 su->su_xid = xid;
 return(old_xid);
}
