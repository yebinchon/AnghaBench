
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* parents; } ;
typedef TYPE_1__ nltype ;
struct TYPE_7__ {struct TYPE_7__* arc_parentlist; } ;
typedef TYPE_2__ arctype ;


 scalar_t__ GREATERTHAN ;
 scalar_t__ arccmp (TYPE_2__*,TYPE_2__*) ;

void
sortparents(nltype *childp)
{
    arctype *arcp;
    arctype *detachedp;
    arctype sorted;
    arctype *prevp;
    sorted.arc_parentlist = 0;
    for ( (arcp = childp -> parents)&&(detachedp = arcp -> arc_parentlist);
     arcp ;
    (arcp = detachedp)&&(detachedp = detachedp -> arc_parentlist)) {




 for ( prevp = &sorted ;
  prevp -> arc_parentlist ;
  prevp = prevp -> arc_parentlist ) {
     if ( arccmp( arcp , prevp -> arc_parentlist ) != GREATERTHAN ) {
  break;
     }
 }
 arcp -> arc_parentlist = prevp -> arc_parentlist;
 prevp -> arc_parentlist = arcp;
    }



    childp -> parents = sorted.arc_parentlist;
}
