
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mbuf {int dummy; } ;
struct authnone_private {int mcnt; int mclient; } ;
typedef int bool_t ;
typedef int XDR ;
typedef int AUTH ;


 int FALSE ;
 int KASSERT (int ,char*) ;
 int TRUE ;
 int XDR_PUTBYTES (int *,int ,int ) ;
 struct authnone_private authnone_private ;
 int xdrmbuf_append (int *,struct mbuf*) ;

__attribute__((used)) static bool_t
authnone_marshal(AUTH *client, uint32_t xid, XDR *xdrs, struct mbuf *args)
{
 struct authnone_private *ap = &authnone_private;

 KASSERT(xdrs != ((void*)0), ("authnone_marshal: xdrs is null"));

 if (!XDR_PUTBYTES(xdrs, ap->mclient, ap->mcnt))
  return (FALSE);

 xdrmbuf_append(xdrs, args);

 return (TRUE);
}
