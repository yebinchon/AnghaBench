
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_req {int dummy; } ;


 void* ypproc_null_2_svc (void*,struct svc_req*) ;

void *
ypoldproc_null_1_svc(void *argp, struct svc_req *rqstp)
{
 return(ypproc_null_2_svc(argp, rqstp));
}
