
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* parents; TYPE_2__* children; int name; } ;
typedef TYPE_1__ nltype ;
struct TYPE_9__ {long arc_count; struct TYPE_9__* arc_parentlist; struct TYPE_9__* arc_childlist; TYPE_1__* arc_childp; TYPE_1__* arc_parentp; } ;
typedef TYPE_2__ arctype ;


 int TALLYDEBUG ;
 TYPE_2__* arclookup (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ calloc (int,int) ;
 int debug ;
 int errx (int,char*) ;
 int printf (char*,long,long,...) ;

void
addarc(nltype *parentp, nltype *childp, long count)
{
    arctype *arcp;







    arcp = arclookup( parentp , childp );
    if ( arcp != 0 ) {
 arcp -> arc_count += count;
 return;
    }
    arcp = (arctype *)calloc( 1 , sizeof *arcp );
    if (arcp == ((void*)0))
 errx( 1 , "malloc failed" );
    arcp -> arc_parentp = parentp;
    arcp -> arc_childp = childp;
    arcp -> arc_count = count;



    arcp -> arc_childlist = parentp -> children;
    parentp -> children = arcp;



    arcp -> arc_parentlist = childp -> parents;
    childp -> parents = arcp;
}
