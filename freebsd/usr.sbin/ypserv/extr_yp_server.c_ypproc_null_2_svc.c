
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_req {int dummy; } ;


 scalar_t__ yp_access (int *,struct svc_req*,...) ;

void *
ypproc_null_2_svc(void *argp, struct svc_req *rqstp)
{
 static char * result;
 static char rval = 0;




 if (yp_access(((void*)0), (struct svc_req *)rqstp))

  return(((void*)0));

 result = &rval;

 return((void *) &result);
}
