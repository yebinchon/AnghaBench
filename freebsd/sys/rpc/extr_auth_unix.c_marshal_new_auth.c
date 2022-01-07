
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct audata {int au_mpos; int au_marshed; } ;
typedef int XDR ;
struct TYPE_4__ {int ah_verf; int ah_cred; } ;
typedef TYPE_1__ AUTH ;


 struct audata* AUTH_PRIVATE (TYPE_1__*) ;
 int MAX_AUTH_BYTES ;
 int XDR_DESTROY (int *) ;
 int XDR_ENCODE ;
 int XDR_GETPOS (int *) ;
 int printf (char*) ;
 int xdr_opaque_auth (int *,int *) ;
 int xdrmem_create (int *,int ,int ,int ) ;

__attribute__((used)) static void
marshal_new_auth(AUTH *auth)
{
 XDR xdr_stream;
 XDR *xdrs = &xdr_stream;
 struct audata *au;

 au = AUTH_PRIVATE(auth);
 xdrmem_create(xdrs, au->au_marshed, MAX_AUTH_BYTES, XDR_ENCODE);
 if ((! xdr_opaque_auth(xdrs, &(auth->ah_cred))) ||
     (! xdr_opaque_auth(xdrs, &(auth->ah_verf))))
  printf("auth_none.c - Fatal marshalling problem");
 else
  au->au_mpos = XDR_GETPOS(xdrs);
 XDR_DESTROY(xdrs);
}
