
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_4__ {int valdat_len; int valdat_val; } ;
struct TYPE_3__ {int keydat_len; int keydat_val; } ;
struct ypresp_key_val {TYPE_2__ val; TYPE_1__ key; int stat; } ;
struct ypreq_nokey {char* domain; char* map; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
typedef int CLIENT ;


 int RPC_SUCCESS ;
 int YPPROC_FIRST ;
 int _yplib_host_timeout ;
 int clnt_call (int *,int ,int ,struct ypreq_nokey*,int ,struct ypresp_key_val*,struct timeval) ;
 int clnt_perror (int *,char*) ;
 char* malloc (int) ;
 int memcpy (char*,int ,int) ;
 int memset (struct ypresp_key_val*,int ,int) ;
 int xdr_free (int ,char*) ;
 scalar_t__ xdr_ypreq_nokey ;
 scalar_t__ xdr_ypresp_key_val ;
 int ypprot_err (int ) ;

int
yp_first_host(CLIENT *client, char *indomain, char *inmap, char **outkey,
    int *outkeylen, char **outval, int *outvallen)
{
 struct ypresp_key_val yprkv;
 struct ypreq_nokey yprnk;
 struct timeval tv;
 int r;

 *outkey = *outval = ((void*)0);
 *outkeylen = *outvallen = 0;

 tv.tv_sec = _yplib_host_timeout;
 tv.tv_usec = 0;

 yprnk.domain = indomain;
 yprnk.map = inmap;
 memset(&yprkv, 0, sizeof yprkv);

 r = clnt_call(client, YPPROC_FIRST,
     (xdrproc_t)xdr_ypreq_nokey, &yprnk,
     (xdrproc_t)xdr_ypresp_key_val, &yprkv, tv);
 if (r != RPC_SUCCESS)
  clnt_perror(client, "yp_first_host: clnt_call");
 if ( !(r = ypprot_err(yprkv.stat)) ) {
  *outkeylen = yprkv.key.keydat_len;
  *outkey = malloc(*outkeylen+1);
  memcpy(*outkey, yprkv.key.keydat_val, *outkeylen);
  (*outkey)[*outkeylen] = '\0';
  *outvallen = yprkv.val.valdat_len;
  *outval = malloc(*outvallen+1);
  memcpy(*outval, yprkv.val.valdat_val, *outvallen);
  (*outval)[*outvallen] = '\0';
 }
 xdr_free((xdrproc_t)xdr_ypresp_key_val, (char *)&yprkv);

 return (r);
}
