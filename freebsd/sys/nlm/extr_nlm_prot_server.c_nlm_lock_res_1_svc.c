
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_req {int dummy; } ;
typedef int nlm_res ;
typedef int nlm4_res ;
typedef int bool_t ;


 int nlm4_lock_res_4_svc (int *,void*,struct svc_req*) ;
 int nlm_convert_to_nlm4_res (int *,int *) ;

bool_t
nlm_lock_res_1_svc(nlm_res *argp, void *result, struct svc_req *rqstp)
{
 nlm4_res arg4;

 nlm_convert_to_nlm4_res(&arg4, argp);
 return (nlm4_lock_res_4_svc(&arg4, result, rqstp));
}
