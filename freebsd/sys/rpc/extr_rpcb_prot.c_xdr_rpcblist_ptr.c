
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int u_int ;
typedef TYPE_1__* rpcblist_ptr ;
typedef int caddr_t ;
typedef scalar_t__ bool_t ;
struct TYPE_8__ {scalar_t__ x_op; } ;
typedef TYPE_2__ XDR ;
struct TYPE_7__ {struct TYPE_7__* rpcb_next; } ;
typedef int RPCBLIST ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ XDR_FREE ;
 int xdr_bool (TYPE_2__*,scalar_t__*) ;
 int xdr_reference (TYPE_2__*,int *,int ,int ) ;
 scalar_t__ xdr_rpcb ;

bool_t
xdr_rpcblist_ptr(XDR *xdrs, rpcblist_ptr *rp)
{





 bool_t more_elements;
 int freeing = (xdrs->x_op == XDR_FREE);
 rpcblist_ptr next;
 rpcblist_ptr next_copy;

 next = ((void*)0);
 for (;;) {
  more_elements = (bool_t)(*rp != ((void*)0));
  if (! xdr_bool(xdrs, &more_elements)) {
   return (FALSE);
  }
  if (! more_elements) {
   return (TRUE);
  }





  if (freeing && *rp)
   next = (*rp)->rpcb_next;
  if (! xdr_reference(xdrs, (caddr_t *)rp,
      (u_int)sizeof (RPCBLIST), (xdrproc_t)xdr_rpcb)) {
   return (FALSE);
  }
  if (freeing) {
   next_copy = next;
   rp = &next_copy;





  } else if (*rp) {
   rp = &((*rp)->rpcb_next);
  }
 }

}
