
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_req {int dummy; } ;
typedef int domainname ;
typedef int bool_t ;


 int TRUE ;
 scalar_t__ yp_access (int *,struct svc_req*,...) ;
 scalar_t__ yp_validdomain (int ) ;

bool_t *
ypproc_domain_nonack_2_svc(domainname *argp, struct svc_req *rqstp)
{
 static bool_t result;




 if (yp_access(((void*)0), (struct svc_req *)rqstp))

  return (((void*)0));

 if (argp == ((void*)0) || yp_validdomain(*argp))
  return (((void*)0));
 else
  result = TRUE;

 return (&result);
}
