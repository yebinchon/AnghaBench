
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ypresp_all {int dummy; } ;
typedef struct ypresp_all ypresp_all ;
struct TYPE_3__ {int domain; } ;
typedef TYPE_1__ ypreq_nokey ;
struct ypresp_val {int dummy; } ;
struct svc_req {int rq_xprt; } ;


 int AUTH_FAILED ;
 int svcerr_auth (int ,int ) ;
 int yp_valid_domain (int ,struct ypresp_val*) ;

ypresp_all *
ypproc_all_2_svc(ypreq_nokey *arg, struct svc_req *req)
{
 static struct ypresp_all res;

 if (yp_valid_domain(arg->domain, (struct ypresp_val *)&res) == -1)
  return (&res);

 svcerr_auth(req->rq_xprt, AUTH_FAILED);
 return (((void*)0));
}
