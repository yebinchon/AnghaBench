
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_req {int dummy; } ;
typedef int SVCTHREAD ;


 int * fha_assign (int *,struct svc_req*,int *) ;
 int fhanew_softc ;

SVCTHREAD *
fhanew_assign(SVCTHREAD *this_thread, struct svc_req *req)
{
 return (fha_assign(this_thread, req, &fhanew_softc));
}
