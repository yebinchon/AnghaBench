
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int my_proc; int my_vers; int my_prog; int my_name; } ;
typedef TYPE_1__ my_id ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int SM_MAXSTRLEN ;
 int TRUE ;
 int xdr_int (int *,int *) ;
 int xdr_string (int *,int *,int ) ;

bool_t
xdr_my_id(XDR *xdrs, my_id *objp)
{

 if (!xdr_string(xdrs, &objp->my_name, SM_MAXSTRLEN))
  return (FALSE);
 if (!xdr_int(xdrs, &objp->my_prog))
  return (FALSE);
 if (!xdr_int(xdrs, &objp->my_vers))
  return (FALSE);
 if (!xdr_int(xdrs, &objp->my_proc))
  return (FALSE);
 return (TRUE);
}
