
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ toporder; } ;
typedef TYPE_1__ nltype ;


 scalar_t__ DFN_BUSY ;
 scalar_t__ DFN_NAN ;

bool
dfn_numbered(nltype *childp)
{

    return ( childp -> toporder != DFN_NAN && childp -> toporder != DFN_BUSY );
}
