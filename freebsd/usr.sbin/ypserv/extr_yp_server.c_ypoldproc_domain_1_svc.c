
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_req {int dummy; } ;
typedef int domainname ;
typedef int bool_t ;


 int * ypproc_domain_2_svc (int *,struct svc_req*) ;

bool_t *
ypoldproc_domain_1_svc(domainname *argp, struct svc_req *rqstp)
{
 return(ypproc_domain_2_svc(argp, rqstp));
}
