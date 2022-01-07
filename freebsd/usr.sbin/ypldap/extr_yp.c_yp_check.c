
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_req {int rq_xprt; } ;
struct sockaddr_in {int dummy; } ;


 struct sockaddr_in* svc_getcaller (int ) ;

int
yp_check(struct svc_req *req)
{
 struct sockaddr_in *caller;

 caller = svc_getcaller(req->rq_xprt);



 return (0);
}
