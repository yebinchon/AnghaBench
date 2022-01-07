
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int toporder; } ;
typedef TYPE_1__ nltype ;
struct TYPE_6__ {int cycletop; TYPE_1__* nlentryp; } ;


 int DFNDEBUG ;
 int DFN_BUSY ;
 int DFN_DEPTH ;
 int debug ;
 int dfn_depth ;
 TYPE_3__* dfn_stack ;
 int errx (int,char*) ;
 int printf (char*,...) ;
 int printname (TYPE_1__*) ;

void
dfn_pre_visit(nltype *parentp)
{

    dfn_depth += 1;
    if ( dfn_depth >= DFN_DEPTH )
 errx( 1 , "[dfn] out of my depth (dfn_stack overflow)" );
    dfn_stack[ dfn_depth ].nlentryp = parentp;
    dfn_stack[ dfn_depth ].cycletop = dfn_depth;
    parentp -> toporder = DFN_BUSY;







}
