
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_req {int dummy; } ;



void *
yppushproc_null_1_svc(void *argp, struct svc_req *rqstp)
{
 static char * result;

 return((void *) &result);
}
