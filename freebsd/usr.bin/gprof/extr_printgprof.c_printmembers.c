
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double propself; double propchild; int selfcalls; int npropcall; struct TYPE_5__* cnext; } ;
typedef TYPE_1__ nltype ;


 double hz ;
 int printf (char*,...) ;
 int printname (TYPE_1__*) ;
 int sortmembers (TYPE_1__*) ;

void
printmembers(nltype *cyclep)
{
    nltype *memberp;

    sortmembers( cyclep );
    for ( memberp = cyclep -> cnext ; memberp ; memberp = memberp -> cnext ) {
 printf( "%6.6s %5.5s %7.2f %11.2f %7ld" ,
  "" , "" , memberp -> propself / hz , memberp -> propchild / hz ,
  memberp -> npropcall );
 if ( memberp -> selfcalls != 0 ) {
     printf( "+%-7ld" , memberp -> selfcalls );
 } else {
     printf( " %7.7s" , "" );
 }
 printf( "     " );
 printname( memberp );
 printf( "\n" );
    }
}
