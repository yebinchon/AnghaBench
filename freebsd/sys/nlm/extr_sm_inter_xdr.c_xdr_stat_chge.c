
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int mon_name; } ;
typedef TYPE_1__ stat_chge ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int SM_MAXSTRLEN ;
 int TRUE ;
 int xdr_int (int *,int *) ;
 int xdr_string (int *,int *,int ) ;

bool_t
xdr_stat_chge(XDR *xdrs, stat_chge *objp)
{

 if (!xdr_string(xdrs, &objp->mon_name, SM_MAXSTRLEN))
  return (FALSE);
 if (!xdr_int(xdrs, &objp->state))
  return (FALSE);
 return (TRUE);
}
