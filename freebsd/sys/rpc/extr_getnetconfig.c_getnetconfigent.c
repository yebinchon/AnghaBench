
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netconfig {scalar_t__ nc_netid; } ;


 struct netconfig* netconfigs ;
 int strcmp (char const*,scalar_t__) ;

struct netconfig *
getnetconfigent(const char *netid)
{
 struct netconfig *nconf;

 for (nconf = netconfigs; nconf->nc_netid; nconf++) {
  if (!strcmp(netid, nconf->nc_netid))
   return (nconf);
 }

 return (((void*)0));
}
