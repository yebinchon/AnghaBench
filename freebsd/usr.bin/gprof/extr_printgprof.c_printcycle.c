
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; int propself; int propchild; int cycleno; int selfcalls; int npropcall; } ;
typedef TYPE_1__ nltype ;


 int BUFSIZ ;
 double hz ;
 int printf (char*,...) ;
 int printtime ;
 int sprintf (char*,char*,int) ;

void
printcycle(nltype *cyclep)
{
    char kirkbuffer[ BUFSIZ ];

    sprintf( kirkbuffer , "[%d]" , cyclep -> index );
    printf( "%-6.6s %5.1f %7.2f %11.2f %7ld" ,
     kirkbuffer ,
     100 * ( cyclep -> propself + cyclep -> propchild ) / printtime ,
     cyclep -> propself / hz ,
     cyclep -> propchild / hz ,
     cyclep -> npropcall );
    if ( cyclep -> selfcalls != 0 ) {
 printf( "+%-7ld" , cyclep -> selfcalls );
    } else {
 printf( " %7.7s" , "" );
    }
    printf( " <cycle %d as a whole>\t[%d]\n" ,
     cyclep -> cycleno , cyclep -> index );
}
