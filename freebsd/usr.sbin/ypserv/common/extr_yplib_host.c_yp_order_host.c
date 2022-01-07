
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef int u_int32_t ;
struct ypresp_order {int stat; int ordernum; } ;
struct ypreq_nokey {char* domain; char* map; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
typedef int CLIENT ;


 int RPC_SUCCESS ;
 int YPPROC_ORDER ;
 int _yplib_host_timeout ;
 int clnt_call (int *,int ,int ,struct ypreq_nokey*,int ,struct ypresp_order*,struct timeval) ;
 int clnt_perror (int *,char*) ;
 int memset (struct ypresp_order*,int ,int) ;
 int xdr_free (int ,char*) ;
 scalar_t__ xdr_ypreq_nokey ;
 scalar_t__ xdr_ypresp_order ;
 int ypprot_err (int ) ;

int
yp_order_host(CLIENT *client, char *indomain, char *inmap, u_int32_t *outorder)
{
 struct ypresp_order ypro;
 struct ypreq_nokey yprnk;
 struct timeval tv;
 int r;

 tv.tv_sec = _yplib_host_timeout;
 tv.tv_usec = 0;

 yprnk.domain = indomain;
 yprnk.map = inmap;

 memset(&ypro, 0, sizeof ypro);

 r = clnt_call(client, YPPROC_ORDER,
     (xdrproc_t)xdr_ypreq_nokey, &yprnk,
     (xdrproc_t)xdr_ypresp_order, &ypro, tv);
 if (r != RPC_SUCCESS)
  clnt_perror(client, "yp_order_host: clnt_call");
 *outorder = ypro.ordernum;
 xdr_free((xdrproc_t)xdr_ypresp_order, (char *)&ypro);

 return ypprot_err(ypro.stat);
}
