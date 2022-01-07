
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ah_verf; int ah_cred; int * ah_ops; } ;
struct authnone_private {int mcnt; TYPE_1__ no_client; int mclient; } ;
typedef int XDR ;


 int MAX_MARSHAL_SIZE ;
 int XDR_DESTROY (int *) ;
 int XDR_ENCODE ;
 int XDR_GETPOS (int *) ;
 int _null_auth ;
 int authnone_ops ;
 struct authnone_private authnone_private ;
 int xdr_opaque_auth (int *,int *) ;
 int xdrmem_create (int *,int ,int ,int ) ;

__attribute__((used)) static void
authnone_init(void *dummy)
{
 struct authnone_private *ap = &authnone_private;
 XDR xdrs;

 ap->no_client.ah_cred = ap->no_client.ah_verf = _null_auth;
 ap->no_client.ah_ops = &authnone_ops;
 xdrmem_create(&xdrs, ap->mclient, MAX_MARSHAL_SIZE, XDR_ENCODE);
 xdr_opaque_auth(&xdrs, &ap->no_client.ah_cred);
 xdr_opaque_auth(&xdrs, &ap->no_client.ah_verf);
 ap->mcnt = XDR_GETPOS(&xdrs);
 XDR_DESTROY(&xdrs);
}
