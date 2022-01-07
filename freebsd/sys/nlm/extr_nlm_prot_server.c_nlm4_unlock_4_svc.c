
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_req {int dummy; } ;
typedef int nlm4_unlockargs ;
typedef int nlm4_res ;
typedef int bool_t ;


 int TRUE ;
 int nlm_do_unlock (int *,int *,struct svc_req*,int *) ;

bool_t
nlm4_unlock_4_svc(nlm4_unlockargs *argp, nlm4_res *result, struct svc_req *rqstp)
{

 nlm_do_unlock(argp, result, rqstp, ((void*)0));
 return (TRUE);
}
