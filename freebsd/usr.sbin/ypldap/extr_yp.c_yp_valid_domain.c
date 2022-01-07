
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ypresp_val {int stat; } ;
struct TYPE_2__ {int sc_domainname; } ;


 int YP_NODOM ;
 TYPE_1__* env ;
 int log_debug (char*) ;
 scalar_t__ strcmp (char*,int ) ;

int
yp_valid_domain(char *domain, struct ypresp_val *res)
{
 if (domain == ((void*)0)) {
  log_debug("NULL domain !");
  return (-1);
 }
 if (strcmp(domain, env->sc_domainname) != 0) {
  res->stat = YP_NODOM;
  return (-1);
 }
 return (0);
}
