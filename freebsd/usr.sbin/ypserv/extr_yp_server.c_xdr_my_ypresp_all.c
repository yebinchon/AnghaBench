
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int val; int key; int stat; } ;
struct TYPE_7__ {TYPE_1__ val; } ;
struct TYPE_8__ {scalar_t__ more; TYPE_2__ ypresp_all_u; } ;
typedef TYPE_3__ ypresp_all ;
typedef scalar_t__ bool_t ;
typedef int XDR ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int YP_TRUE ;
 int xdr_ypresp_all (int *,TYPE_3__*) ;
 int yp_nextbykey (int *,int *) ;

__attribute__((used)) static bool_t
xdr_my_ypresp_all(register XDR *xdrs, ypresp_all *objp)
{
 while (1) {

  if ((objp->ypresp_all_u.val.stat =
   yp_nextbykey(&objp->ypresp_all_u.val.key,
         &objp->ypresp_all_u.val.val)) == YP_TRUE) {
   objp->more = TRUE;
  } else {
   objp->more = FALSE;
  }


  if (!xdr_ypresp_all(xdrs, objp))
   return(FALSE);
  if (objp->more == FALSE)
   return(TRUE);
 }
}
