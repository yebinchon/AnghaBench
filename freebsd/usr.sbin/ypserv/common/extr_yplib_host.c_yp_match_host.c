
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_4__ {int valdat_len; int valdat_val; } ;
struct ypresp_val {TYPE_2__ val; int stat; } ;
struct TYPE_3__ {char* keydat_val; int keydat_len; } ;
struct ypreq_key {char* domain; char* map; TYPE_1__ key; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
typedef int CLIENT ;


 int RPC_SUCCESS ;
 int YPPROC_MATCH ;
 int _yplib_host_timeout ;
 int clnt_call (int *,int ,int ,struct ypreq_key*,int ,struct ypresp_val*,struct timeval) ;
 int clnt_perror (int *,char*) ;
 char* malloc (int) ;
 int memcpy (char*,int ,int) ;
 int memset (struct ypresp_val*,int ,int) ;
 int xdr_free (int ,char*) ;
 scalar_t__ xdr_ypreq_key ;
 scalar_t__ xdr_ypresp_val ;
 int ypprot_err (int ) ;

int
yp_match_host(CLIENT *client, char *indomain, char *inmap, const char *inkey,
    int inkeylen, char **outval, int *outvallen)
{
 struct ypresp_val yprv;
 struct ypreq_key yprk;
 struct timeval tv;
 int r;

 *outval = ((void*)0);
 *outvallen = 0;

 tv.tv_sec = _yplib_host_timeout;
 tv.tv_usec = 0;

 yprk.domain = indomain;
 yprk.map = inmap;
 yprk.key.keydat_val = (char *)inkey;
 yprk.key.keydat_len = inkeylen;

 memset(&yprv, 0, sizeof yprv);

 r = clnt_call(client, YPPROC_MATCH,
     (xdrproc_t)xdr_ypreq_key, &yprk,
     (xdrproc_t)xdr_ypresp_val, &yprv, tv);
 if (r != RPC_SUCCESS)
  clnt_perror(client, "yp_match_host: clnt_call");
 if ( !(r = ypprot_err(yprv.stat)) ) {
  *outvallen = yprv.val.valdat_len;
  *outval = malloc(*outvallen + 1);
  memcpy(*outval, yprv.val.valdat_val, *outvallen);
  (*outval)[*outvallen] = '\0';
 }
 xdr_free((xdrproc_t)xdr_ypresp_val, (char *)&yprv);

 return (r);
}
