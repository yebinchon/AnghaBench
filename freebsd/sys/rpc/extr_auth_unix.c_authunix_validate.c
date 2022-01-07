
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct opaque_auth {scalar_t__ oa_flavor; int oa_length; int oa_base; } ;
struct mbuf {int dummy; } ;
struct TYPE_11__ {int * oa_base; int oa_length; } ;
struct audata {TYPE_5__ au_origcred; TYPE_5__ au_shcred; } ;
typedef int bool_t ;
struct TYPE_9__ {int x_op; } ;
typedef TYPE_1__ XDR ;
struct TYPE_10__ {TYPE_5__ ah_cred; } ;
typedef TYPE_2__ AUTH ;


 struct audata* AUTH_PRIVATE (TYPE_2__*) ;
 scalar_t__ AUTH_SHORT ;
 int TRUE ;
 int XDR_DECODE ;
 int XDR_FREE ;
 int marshal_new_auth (TYPE_2__*) ;
 int mem_free (int *,int ) ;
 scalar_t__ xdr_opaque_auth (TYPE_1__*,TYPE_5__*) ;
 int xdrmem_create (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static bool_t
authunix_validate(AUTH *auth, uint32_t xid, struct opaque_auth *verf,
    struct mbuf **mrepp)
{
 struct audata *au;
 XDR txdrs;

 if (!verf)
  return (TRUE);

 if (verf->oa_flavor == AUTH_SHORT) {
  au = AUTH_PRIVATE(auth);
  xdrmem_create(&txdrs, verf->oa_base, verf->oa_length,
      XDR_DECODE);

  if (au->au_shcred.oa_base != ((void*)0)) {
   mem_free(au->au_shcred.oa_base,
       au->au_shcred.oa_length);
   au->au_shcred.oa_base = ((void*)0);
  }
  if (xdr_opaque_auth(&txdrs, &au->au_shcred)) {
   auth->ah_cred = au->au_shcred;
  } else {
   txdrs.x_op = XDR_FREE;
   (void)xdr_opaque_auth(&txdrs, &au->au_shcred);
   au->au_shcred.oa_base = ((void*)0);
   auth->ah_cred = au->au_origcred;
  }
  marshal_new_auth(auth);
 }

 return (TRUE);
}
