
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ toporder; } ;
typedef TYPE_1__ nltype ;


 scalar_t__ DFN_NAN ;
 int FALSE ;
 int TRUE ;

bool
dfn_busy(nltype *childp)
{

    if ( childp -> toporder == DFN_NAN ) {
 return FALSE;
    }
    return TRUE;
}
