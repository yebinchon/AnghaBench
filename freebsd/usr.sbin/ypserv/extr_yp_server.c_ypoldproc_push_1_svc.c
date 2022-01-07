
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ypresponse ;
typedef int yprequest ;
struct svc_req {int dummy; } ;



ypresponse *
ypoldproc_push_1_svc(yprequest *argp, struct svc_req *rqstp)
{
 static ypresponse result;





 return (&result);
}
