
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_req {int dummy; } ;
typedef int domainname ;
typedef scalar_t__ bool_t ;
struct TYPE_2__ {int sc_domainname; } ;


 TYPE_1__* env ;
 scalar_t__ strcmp (int ,int ) ;

bool_t *
ypproc_domain_2_svc(domainname *arg, struct svc_req *req)
{
 static bool_t res;

 res = (bool_t)1;
 if (strcmp(*arg, env->sc_domainname) != 0)
  res = (bool_t)0;
 return (&res);
}
