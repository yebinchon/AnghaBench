
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mbuf {int dummy; } ;
struct audata {int au_mpos; int au_marshed; } ;
typedef int bool_t ;
typedef int XDR ;
typedef int AUTH ;


 struct audata* AUTH_PRIVATE (int *) ;
 int FALSE ;
 int TRUE ;
 int XDR_PUTBYTES (int *,int ,int ) ;
 int xdrmbuf_append (int *,struct mbuf*) ;

__attribute__((used)) static bool_t
authunix_marshal(AUTH *auth, uint32_t xid, XDR *xdrs, struct mbuf *args)
{
 struct audata *au;

 au = AUTH_PRIVATE(auth);
 if (!XDR_PUTBYTES(xdrs, au->au_marshed, au->au_mpos))
  return (FALSE);

 xdrmbuf_append(xdrs, args);

 return (TRUE);
}
