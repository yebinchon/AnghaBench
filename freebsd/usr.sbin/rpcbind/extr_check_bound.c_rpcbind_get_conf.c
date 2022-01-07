
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netconfig {int nc_netid; } ;
struct fdlist {struct netconfig* nconf; struct fdlist* next; } ;


 struct fdlist* fdhead ;
 scalar_t__ strcmp (int ,char const*) ;

struct netconfig *
rpcbind_get_conf(const char *netid)
{
 struct fdlist *fdl;

 for (fdl = fdhead; fdl; fdl = fdl->next)
  if (strcmp(fdl->nconf->nc_netid, netid) == 0)
   break;
 if (fdl == ((void*)0))
  return (((void*)0));
 return (fdl->nconf);
}
