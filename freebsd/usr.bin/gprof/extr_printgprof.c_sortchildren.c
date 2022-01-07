
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* children; } ;
typedef TYPE_1__ nltype ;
struct TYPE_7__ {struct TYPE_7__* arc_childlist; } ;
typedef TYPE_2__ arctype ;


 scalar_t__ LESSTHAN ;
 scalar_t__ arccmp (TYPE_2__*,TYPE_2__*) ;

void
sortchildren(nltype *parentp)
{
    arctype *arcp;
    arctype *detachedp;
    arctype sorted;
    arctype *prevp;
    sorted.arc_childlist = 0;
    for ( (arcp = parentp -> children)&&(detachedp = arcp -> arc_childlist);
     arcp ;
    (arcp = detachedp)&&(detachedp = detachedp -> arc_childlist)) {




 for ( prevp = &sorted ;
  prevp -> arc_childlist ;
  prevp = prevp -> arc_childlist ) {
     if ( arccmp( arcp , prevp -> arc_childlist ) != LESSTHAN ) {
  break;
     }
 }
 arcp -> arc_childlist = prevp -> arc_childlist;
 prevp -> arc_childlist = arcp;
    }



    parentp -> children = sorted.arc_childlist;
}
