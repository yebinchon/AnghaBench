
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_req {int dummy; } ;


 int AUTH_TOOWEAK ;
 int svcerr_auth (struct svc_req*,int ) ;

void
svcerr_weakauth(struct svc_req *rqstp)
{

 svcerr_auth(rqstp, AUTH_TOOWEAK);
}
