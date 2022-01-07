
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct xucred {int dummy; } ;
struct timeval {int tv_sec; } ;
struct TYPE_11__ {scalar_t__ oa_base; int oa_length; } ;
struct audata {TYPE_1__ au_origcred; int au_shfaults; } ;
typedef int bool_t ;
struct TYPE_12__ {int x_op; } ;
typedef TYPE_2__ XDR ;
struct TYPE_13__ {TYPE_1__ ah_cred; } ;
typedef TYPE_3__ AUTH ;


 struct audata* AUTH_PRIVATE (TYPE_3__*) ;
 int FALSE ;
 int XDR_DECODE ;
 int XDR_DESTROY (TYPE_2__*) ;
 int XDR_ENCODE ;
 int XDR_SETPOS (TYPE_2__*,int ) ;
 int getmicrotime (struct timeval*) ;
 int marshal_new_auth (TYPE_3__*) ;
 int xdr_authunix_parms (TYPE_2__*,int *,struct xucred*) ;
 int xdrmem_create (TYPE_2__*,scalar_t__,int ,int ) ;

__attribute__((used)) static bool_t
authunix_refresh(AUTH *auth, void *dummy)
{
 struct audata *au = AUTH_PRIVATE(auth);
 struct xucred xcr;
 uint32_t time;
 struct timeval now;
 XDR xdrs;
 int stat;

 if (auth->ah_cred.oa_base == au->au_origcred.oa_base) {

  return (FALSE);
 }
 au->au_shfaults ++;


 xdrmem_create(&xdrs, au->au_origcred.oa_base,
     au->au_origcred.oa_length, XDR_DECODE);
 stat = xdr_authunix_parms(&xdrs, &time, &xcr);
 if (! stat)
  goto done;


 getmicrotime(&now);
 time = now.tv_sec;
 xdrs.x_op = XDR_ENCODE;
 XDR_SETPOS(&xdrs, 0);

 stat = xdr_authunix_parms(&xdrs, &time, &xcr);
 if (! stat)
  goto done;
 auth->ah_cred = au->au_origcred;
 marshal_new_auth(auth);
done:
 XDR_DESTROY(&xdrs);
 return (stat);
}
