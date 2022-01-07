
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* cyclehead; struct TYPE_6__* cnext; } ;
typedef TYPE_1__ nltype ;
struct TYPE_7__ {TYPE_1__* nlentryp; } ;


 int DFNDEBUG ;
 int debug ;
 int dfn_depth ;
 int dfn_self_cycle (TYPE_1__*) ;
 TYPE_3__* dfn_stack ;
 int errx (int,char*) ;
 int fprintf (int ,char*) ;
 int printf (char*,...) ;
 int printname (TYPE_1__*) ;
 int stderr ;

void
dfn_findcycle(nltype *childp)
{
    int cycletop;
    nltype *cycleheadp;
    nltype *tailp;
    int index;

    for ( cycletop = dfn_depth ; cycletop > 0 ; cycletop -= 1 ) {
 cycleheadp = dfn_stack[ cycletop ].nlentryp;
 if ( childp == cycleheadp ) {
     break;
 }
 if ( childp -> cyclehead != childp &&
     childp -> cyclehead == cycleheadp ) {
     break;
 }
    }
    if ( cycletop <= 0 )
 errx( 1 , "[dfn_findcycle] couldn't find head of cycle" );
    if ( cycletop == dfn_depth ) {




 dfn_self_cycle( childp );
    } else {






 for ( tailp = cycleheadp ; tailp -> cnext ; tailp = tailp -> cnext ) {
 }





 if ( cycleheadp -> cyclehead != cycleheadp ) {
     cycleheadp = cycleheadp -> cyclehead;







 }
 for ( index = cycletop + 1 ; index <= dfn_depth ; index += 1 ) {
     childp = dfn_stack[ index ].nlentryp;
     if ( childp -> cyclehead == childp ) {




  tailp -> cnext = childp;
  childp -> cyclehead = cycleheadp;
  for ( tailp = childp ; tailp->cnext ; tailp = tailp->cnext ) {
      tailp -> cnext -> cyclehead = cycleheadp;
  }
     } else if ( childp -> cyclehead != cycleheadp ) {
  fprintf( stderr ,
   "[dfn_busy] glommed, but not to cyclehead\n" );
     }
 }
    }
}
