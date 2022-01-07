
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct ypresp_maplist {int stat; struct ypmaplist* maps; } ;
struct ypmaplist {int dummy; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
typedef int CLIENT ;


 int RPC_SUCCESS ;
 int YPPROC_MAPLIST ;
 int _yplib_host_timeout ;
 int clnt_call (int *,int ,int ,char**,int ,struct ypresp_maplist*,struct timeval) ;
 int clnt_perror (int *,char*) ;
 int memset (struct ypresp_maplist*,int ,int) ;
 scalar_t__ xdr_domainname ;
 scalar_t__ xdr_ypresp_maplist ;
 int ypprot_err (int ) ;

int
yp_maplist_host(CLIENT *client, char *indomain, struct ypmaplist **outmaplist)
{
 struct ypresp_maplist ypml;
 struct timeval tv;
 int r;

 tv.tv_sec = _yplib_host_timeout;
 tv.tv_usec = 0;

 memset(&ypml, 0, sizeof ypml);

 r = clnt_call(client, YPPROC_MAPLIST,
     (xdrproc_t)xdr_domainname, &indomain,
     (xdrproc_t)xdr_ypresp_maplist, &ypml, tv);
 if (r != RPC_SUCCESS)
  clnt_perror(client, "yp_maplist: clnt_call");
 *outmaplist = ypml.maps;


 return ypprot_err(ypml.stat);
}
