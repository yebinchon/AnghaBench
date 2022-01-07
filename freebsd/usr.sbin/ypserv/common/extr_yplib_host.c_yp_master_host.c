
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct ypresp_master {int peer; int stat; } ;
struct ypreq_nokey {char* domain; char* map; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
typedef int CLIENT ;


 int RPC_SUCCESS ;
 int YPPROC_MASTER ;
 int _yplib_host_timeout ;
 int clnt_call (int *,int ,int ,struct ypreq_nokey*,int ,struct ypresp_master*,struct timeval) ;
 int clnt_perror (int *,char*) ;
 int memset (struct ypresp_master*,int ,int) ;
 char* strdup (int ) ;
 int xdr_free (int ,char*) ;
 scalar_t__ xdr_ypreq_nokey ;
 scalar_t__ xdr_ypresp_master ;
 int ypprot_err (int ) ;

int
yp_master_host(CLIENT *client, char *indomain, char *inmap, char **outname)
{
 struct ypresp_master yprm;
 struct ypreq_nokey yprnk;
 struct timeval tv;
 int r;

 tv.tv_sec = _yplib_host_timeout;
 tv.tv_usec = 0;
 yprnk.domain = indomain;
 yprnk.map = inmap;

 memset(&yprm, 0, sizeof yprm);

 r = clnt_call(client, YPPROC_MASTER,
     (xdrproc_t)xdr_ypreq_nokey, &yprnk,
     (xdrproc_t)xdr_ypresp_master, &yprm, tv);
 if (r != RPC_SUCCESS)
  clnt_perror(client, "yp_master: clnt_call");
 if (!(r = ypprot_err(yprm.stat)))
  *outname = strdup(yprm.peer);
 xdr_free((xdrproc_t)xdr_ypresp_master, (char *)&yprm);

 return (r);
}
