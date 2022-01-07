
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* children; } ;
typedef TYPE_1__ nltype ;
struct TYPE_11__ {int arc_flags; TYPE_1__* arc_childp; struct TYPE_11__* arc_childlist; } ;
typedef TYPE_2__ arctype ;


 int DEADARC ;
 int DFNDEBUG ;
 int debug ;
 scalar_t__ dfn_busy (TYPE_1__*) ;
 int dfn_findcycle (TYPE_1__*) ;
 scalar_t__ dfn_numbered (TYPE_1__*) ;
 int dfn_post_visit (TYPE_1__*) ;
 int dfn_pre_visit (TYPE_1__*) ;
 int printf (char*) ;
 int printname (TYPE_1__*) ;

void
dfn(nltype *parentp)
{
    arctype *arcp;
    if ( dfn_numbered( parentp ) ) {
 return;
    }



    if ( dfn_busy( parentp ) ) {
 dfn_findcycle( parentp );
 return;
    }



    dfn_pre_visit( parentp );



    for ( arcp = parentp -> children ; arcp ; arcp = arcp -> arc_childlist ) {
     if ( arcp -> arc_flags & DEADARC )
  continue;
     dfn( arcp -> arc_childp );
    }



    dfn_post_visit( parentp );
}
