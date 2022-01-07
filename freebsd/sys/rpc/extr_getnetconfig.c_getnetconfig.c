
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netconfig {int * nc_netid; } ;



struct netconfig *
getnetconfig(void *handle)
{
 struct netconfig **nconfp = (struct netconfig **) handle;
 struct netconfig *nconf;

 nconf = *nconfp;
 if (nconf->nc_netid == ((void*)0))
  return (((void*)0));

 (*nconfp)++;

 return (nconf);
}
