
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_req {int dummy; } ;
typedef int nlm4_testres ;
typedef int nlm4_testargs ;
typedef int bool_t ;


 int TRUE ;
 int nlm_do_test (int *,int *,struct svc_req*,int *) ;

bool_t
nlm4_test_4_svc(nlm4_testargs *argp, nlm4_testres *result, struct svc_req *rqstp)
{

 nlm_do_test(argp, result, rqstp, ((void*)0));
 return (TRUE);
}
