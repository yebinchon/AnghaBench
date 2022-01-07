
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_req {int dummy; } ;
typedef int nlm4_notify ;
typedef int bool_t ;


 int TRUE ;
 int nlm_do_free_all (int *) ;

bool_t
nlm4_free_all_4_svc(nlm4_notify *argp, void *result, struct svc_req *rqstp)
{

 nlm_do_free_all(argp);
 return (TRUE);
}
