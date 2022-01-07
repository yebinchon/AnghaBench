
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int printflag; double propfraction; int propself; int time; int name; struct TYPE_5__* cyclehead; } ;
typedef TYPE_1__ nltype ;


 int Elist ;
 int FALSE ;
 int Fflag ;
 int Flist ;
 int PROPDEBUG ;
 int TRUE ;
 int debug ;
 int elist ;
 int fflag ;
 int flist ;
 int inheritflags (TYPE_1__*) ;
 int nname ;
 scalar_t__ onlist (int ,int ) ;
 int printf (char*,...) ;
 int printname (TYPE_1__*) ;
 double printtime ;
 TYPE_1__** topsortnlp ;

void
doflags(void)
{
    int index;
    nltype *childp;
    nltype *oldhead;

    oldhead = 0;
    for ( index = nname-1 ; index >= 0 ; index -= 1 ) {
 childp = topsortnlp[ index ];







 if ( childp -> cyclehead != oldhead ) {
     oldhead = childp -> cyclehead;
     inheritflags( childp );
 }
 if ( ! childp -> printflag ) {






     if ( onlist( flist , childp -> name )
  || ( !fflag && !onlist( elist , childp -> name ) ) ) {
  childp -> printflag = TRUE;
     }
 } else {





     if ( ( !onlist( flist , childp -> name ) )
  && onlist( elist , childp -> name ) ) {
  childp -> printflag = FALSE;
     }
 }
 if ( childp -> propfraction == 0.0 ) {






     if ( onlist( Flist , childp -> name )
  || ( !Fflag && !onlist( Elist , childp -> name ) ) ) {
      childp -> propfraction = 1.0;
     }
 } else {





     if ( !onlist( Flist , childp -> name )
  && onlist( Elist , childp -> name ) ) {
  childp -> propfraction = 0.0;
     }
 }
 childp -> propself = childp -> time * childp -> propfraction;
 printtime += childp -> propself;
    }
}
