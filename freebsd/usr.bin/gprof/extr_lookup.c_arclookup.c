
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* name; TYPE_3__* children; } ;
typedef TYPE_2__ nltype ;
struct TYPE_9__ {TYPE_2__* arc_childp; TYPE_1__* arc_parentp; struct TYPE_9__* arc_childlist; } ;
typedef TYPE_3__ arctype ;
struct TYPE_7__ {char* name; } ;


 int LOOKUPDEBUG ;
 int debug ;
 int fprintf (int ,char*) ;
 int printf (char*,char*,char*) ;
 int stderr ;

arctype *
arclookup(nltype *parentp, nltype *childp)
{
    arctype *arcp;

    if ( parentp == 0 || childp == 0 ) {
 fprintf( stderr, "[arclookup] parentp == 0 || childp == 0\n" );
 return 0;
    }






    for ( arcp = parentp -> children ; arcp ; arcp = arcp -> arc_childlist ) {







 if ( arcp -> arc_childp == childp ) {
     return arcp;
 }
    }
    return 0;
}
