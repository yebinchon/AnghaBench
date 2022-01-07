
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ ncall; scalar_t__ selfcalls; scalar_t__ propself; scalar_t__ propchild; scalar_t__ name; scalar_t__ cycleno; int printflag; } ;
typedef TYPE_1__ nltype ;


 int free (TYPE_1__**) ;
 int gprofheader () ;
 int gprofline (TYPE_1__*) ;
 int ncycle ;
 int nname ;
 int printchildren (TYPE_1__*) ;
 int printcycle (TYPE_1__*) ;
 int printf (char*) ;
 int printmembers (TYPE_1__*) ;
 int printparents (TYPE_1__*) ;
 scalar_t__ zflag ;

void
printgprof(nltype **timesortnlp)
{
    int idx;
    nltype *parentp;




    gprofheader();
    for ( idx = 0 ; idx < nname + ncycle ; idx ++ ) {
 parentp = timesortnlp[ idx ];
 if ( zflag == 0 &&
      parentp -> ncall == 0 &&
      parentp -> selfcalls == 0 &&
      parentp -> propself == 0 &&
      parentp -> propchild == 0 ) {
     continue;
 }
 if ( ! parentp -> printflag ) {
     continue;
 }
 if ( parentp -> name == 0 && parentp -> cycleno != 0 ) {



     printcycle( parentp );
     printmembers( parentp );
 } else {
     printparents( parentp );
     gprofline( parentp );
     printchildren( parentp );
 }
 printf( "\n" );
 printf( "-----------------------------------------------\n" );
 printf( "\n" );
    }
    free( timesortnlp );
}
