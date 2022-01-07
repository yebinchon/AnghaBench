
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct netconfig {int * nc_protofmly; } ;
typedef int CLIENT ;


 int NC_LOOPBACK ;
 int * clnt_tp_create (int *,int ,int ,struct netconfig*) ;
 int endnetconfig (void*) ;
 struct netconfig* getnetconfig (void*) ;
 int nc_sperror () ;
 void* setnetconfig () ;
 scalar_t__ strcmp (int *,int ) ;
 int warnx (char*,int ) ;

__attribute__((used)) static CLIENT *
local_rpcb(u_long prog, u_long vers)
{
 void *localhandle;
 struct netconfig *nconf;
 CLIENT *clnt;

 localhandle = setnetconfig();
 while ((nconf = getnetconfig(localhandle)) != ((void*)0)) {
  if (nconf->nc_protofmly != ((void*)0) &&
      strcmp(nconf->nc_protofmly, NC_LOOPBACK) == 0)
   break;
 }
 if (nconf == ((void*)0)) {
  warnx("getnetconfig: %s", nc_sperror());
  return (((void*)0));
 }

 clnt = clnt_tp_create(((void*)0), prog, vers, nconf);
 endnetconfig(localhandle);
 return clnt;
}
