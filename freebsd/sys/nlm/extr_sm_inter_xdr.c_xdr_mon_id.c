
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int my_id; int mon_name; } ;
typedef TYPE_1__ mon_id ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int SM_MAXSTRLEN ;
 int TRUE ;
 int xdr_my_id (int *,int *) ;
 int xdr_string (int *,int *,int ) ;

bool_t
xdr_mon_id(XDR *xdrs, mon_id *objp)
{

 if (!xdr_string(xdrs, &objp->mon_name, SM_MAXSTRLEN))
  return (FALSE);
 if (!xdr_my_id(xdrs, &objp->my_id))
  return (FALSE);
 return (TRUE);
}
