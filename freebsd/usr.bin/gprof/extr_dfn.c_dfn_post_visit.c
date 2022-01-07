
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int toporder; struct TYPE_4__* cnext; struct TYPE_4__* cyclehead; } ;
typedef TYPE_1__ nltype ;


 int DFNDEBUG ;
 int debug ;
 int dfn_counter ;
 int dfn_depth ;
 int printf (char*,...) ;
 int printname (TYPE_1__*) ;

void
dfn_post_visit(nltype *parentp)
{
    nltype *memberp;
    if ( parentp -> cyclehead == parentp ) {
 dfn_counter += 1;
 for ( memberp = parentp ; memberp ; memberp = memberp -> cnext ) {
     memberp -> toporder = dfn_counter;







 }
    } else {





    }
    dfn_depth -= 1;
}
