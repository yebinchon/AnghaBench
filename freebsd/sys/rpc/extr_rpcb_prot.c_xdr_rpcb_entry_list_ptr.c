
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int u_int ;
typedef TYPE_1__* rpcb_entry_list_ptr ;
typedef int rpcb_entry_list ;
typedef int caddr_t ;
typedef scalar_t__ bool_t ;
struct TYPE_8__ {scalar_t__ x_op; } ;
typedef TYPE_2__ XDR ;
struct TYPE_7__ {struct TYPE_7__* rpcb_entry_next; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ XDR_FREE ;
 int xdr_bool (TYPE_2__*,scalar_t__*) ;
 int xdr_reference (TYPE_2__*,int *,int ,int ) ;
 scalar_t__ xdr_rpcb_entry ;

bool_t
xdr_rpcb_entry_list_ptr(XDR *xdrs, rpcb_entry_list_ptr *rp)
{





 bool_t more_elements;
 int freeing = (xdrs->x_op == XDR_FREE);
 rpcb_entry_list_ptr next;
 rpcb_entry_list_ptr next_copy;

 next = ((void*)0);
 for (;;) {
  more_elements = (bool_t)(*rp != ((void*)0));
  if (! xdr_bool(xdrs, &more_elements)) {
   return (FALSE);
  }
  if (! more_elements) {
   return (TRUE);
  }





  if (freeing)
   next = (*rp)->rpcb_entry_next;
  if (! xdr_reference(xdrs, (caddr_t *)rp,
      (u_int)sizeof (rpcb_entry_list),
        (xdrproc_t)xdr_rpcb_entry)) {
   return (FALSE);
  }
  if (freeing && *rp) {
   next_copy = next;
   rp = &next_copy;





  } else if (*rp) {
   rp = &((*rp)->rpcb_entry_next);
  }
 }

}
