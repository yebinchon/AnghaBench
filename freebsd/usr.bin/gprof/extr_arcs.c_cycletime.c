
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double propfraction; int time; int propself; struct TYPE_3__* cnext; } ;
typedef TYPE_1__ nltype ;


 TYPE_1__* cyclenl ;
 int ncycle ;

void
cycletime(void)
{
    int cycle;
    nltype *cyclenlp;
    nltype *childp;

    for ( cycle = 1 ; cycle <= ncycle ; cycle += 1 ) {
 cyclenlp = &cyclenl[ cycle ];
 for ( childp = cyclenlp -> cnext ; childp ; childp = childp -> cnext ) {
     if ( childp -> propfraction == 0.0 ) {




  continue;
     }
     cyclenlp -> time += childp -> time;
 }
 cyclenlp -> propself = cyclenlp -> propfraction * cyclenlp -> time;
    }
}
