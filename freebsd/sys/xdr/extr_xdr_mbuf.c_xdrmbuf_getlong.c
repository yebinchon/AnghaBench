
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int bool_t ;
typedef int XDR ;


 int TRUE ;
 long ntohl (int ) ;
 int xdrmbuf_getbytes (int *,char*,int) ;
 int * xdrmbuf_inline (int *,int) ;

__attribute__((used)) static bool_t
xdrmbuf_getlong(XDR *xdrs, long *lp)
{
 int32_t *p;
 int32_t t;

 p = xdrmbuf_inline(xdrs, sizeof(int32_t));
 if (p) {
  t = *p;
 } else {
  xdrmbuf_getbytes(xdrs, (char *) &t, sizeof(int32_t));
 }

 *lp = ntohl(t);
 return (TRUE);
}
