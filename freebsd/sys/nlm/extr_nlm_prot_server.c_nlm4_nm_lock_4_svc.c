
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_req {int dummy; } ;
typedef int nlm4_res ;
typedef int nlm4_lockargs ;
typedef int bool_t ;


 int FALSE ;
 int TRUE ;
 int nlm_do_lock (int *,int *,struct svc_req*,int ,int *) ;

bool_t
nlm4_nm_lock_4_svc(nlm4_lockargs *argp, nlm4_res *result, struct svc_req *rqstp)
{

 nlm_do_lock(argp, result, rqstp, FALSE, ((void*)0));
 return (TRUE);
}
