
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xc_num_avail; int xc_is_last_record; } ;
typedef TYPE_1__ xdr_bytesrec ;
typedef int uint32_t ;
typedef scalar_t__ int32_t ;
typedef int bool_t ;
struct TYPE_5__ {int x_handy; char* x_private; } ;
typedef TYPE_2__ XDR ;


 int FALSE ;
 int RNDUP (int) ;
 int TRUE ;



 int ntohl (int ) ;

__attribute__((used)) static bool_t
xdrmem_control(XDR *xdrs, int request, void *info)
{
 xdr_bytesrec *xptr;
 int32_t *l;
 int len;

 switch (request) {

 case 130:
  xptr = (xdr_bytesrec *)info;
  xptr->xc_is_last_record = TRUE;
  xptr->xc_num_avail = xdrs->x_handy;
  return (TRUE);

 case 129:



  if (xdrs->x_handy < sizeof (int32_t))
   return (FALSE);
  l = (int32_t *)info;
  *l = (int32_t)ntohl((uint32_t)
      (*((int32_t *)(xdrs->x_private))));
  return (TRUE);

 case 128:



  l = (int32_t *)info;
  len = RNDUP((int)(*l));
  if (xdrs->x_handy < len)
   return (FALSE);
  xdrs->x_handy -= len;
  xdrs->x_private = (char *)xdrs->x_private + len;
  return (TRUE);

 }
 return (FALSE);
}
