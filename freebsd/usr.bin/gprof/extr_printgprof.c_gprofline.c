
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int index; int propself; int propchild; int ncall; scalar_t__ selfcalls; int npropcall; } ;
typedef TYPE_1__ nltype ;


 int BUFSIZ ;
 double hz ;
 int printf (char*,...) ;
 int printname (TYPE_1__*) ;
 int printtime ;
 int sprintf (char*,char*,int) ;

void
gprofline(register nltype *np)
{
    char kirkbuffer[ BUFSIZ ];

    sprintf( kirkbuffer , "[%d]" , np -> index );
    printf( "%-6.6s %5.1f %7.2f %11.2f" ,
     kirkbuffer ,
     100 * ( np -> propself + np -> propchild ) / printtime ,
     np -> propself / hz ,
     np -> propchild / hz );
    if ( ( np -> ncall + np -> selfcalls ) != 0 ) {
 printf( " %7ld" , np -> npropcall );
 if ( np -> selfcalls != 0 ) {
     printf( "+%-7ld " , np -> selfcalls );
 } else {
     printf( " %7.7s " , "" );
 }
    } else {
 printf( " %7.7s %7.7s " , "" , "" );
    }
    printname( np );
    printf( "\n" );
}
