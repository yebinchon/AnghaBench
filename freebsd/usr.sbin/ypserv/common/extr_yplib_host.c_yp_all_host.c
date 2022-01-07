
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef scalar_t__ u_long ;
struct ypreq_nokey {char* domain; char* map; } ;
struct ypall_callback {scalar_t__ data; int foreach; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
typedef int CLIENT ;


 int YPPROC_ALL ;
 scalar_t__ YP_FALSE ;
 int _yplib_host_timeout ;
 int clnt_call (int *,int ,int ,struct ypreq_nokey*,int ,scalar_t__*,struct timeval) ;
 scalar_t__ xdr_ypreq_nokey ;
 scalar_t__ xdr_ypresp_all_seq ;
 int ypprot_err (scalar_t__) ;
 int ypresp_allfn ;
 void* ypresp_data ;

int
yp_all_host(CLIENT *client, char *indomain, char *inmap,
    struct ypall_callback *incallback)
{
 struct ypreq_nokey yprnk;
 struct timeval tv;
 u_long status;

 tv.tv_sec = _yplib_host_timeout;
 tv.tv_usec = 0;

 yprnk.domain = indomain;
 yprnk.map = inmap;
 ypresp_allfn = incallback->foreach;
 ypresp_data = (void *)incallback->data;

 (void) clnt_call(client, YPPROC_ALL,
     (xdrproc_t)xdr_ypreq_nokey, &yprnk,
     (xdrproc_t)xdr_ypresp_all_seq, &status, tv);
 if (status != YP_FALSE)
  return ypprot_err(status);

 return (0);
}
