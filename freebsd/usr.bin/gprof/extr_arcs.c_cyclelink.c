
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ cnext; double time; double childtime; double propfraction; double propself; double propchild; int cycleno; int npropcall; scalar_t__ selfcalls; TYPE_2__* parents; struct TYPE_7__* cyclehead; scalar_t__ children; int toporder; scalar_t__ index; int printflag; scalar_t__ ncall; scalar_t__ value; scalar_t__ name; } ;
typedef TYPE_1__ nltype ;
struct TYPE_8__ {scalar_t__ arc_count; TYPE_1__* arc_parentp; struct TYPE_8__* arc_parentlist; } ;
typedef TYPE_2__ arctype ;


 int CYCLEDEBUG ;
 int DFN_NAN ;
 int TRUE ;
 scalar_t__ calloc (int,int) ;
 TYPE_1__* cyclenl ;
 int debug ;
 int errx (int,char*,int) ;
 int ncycle ;
 TYPE_1__* nl ;
 TYPE_1__* npe ;
 int printf (char*,...) ;
 int printname (TYPE_1__*) ;

void
cyclelink(void)
{
    register nltype *nlp;
    register nltype *cyclenlp;
    int cycle;
    nltype *memberp;
    arctype *arcp;




    ncycle = 0;
    for ( nlp = nl ; nlp < npe ; nlp++ ) {



 if ( nlp -> cyclehead == nlp && nlp -> cnext != 0 ) {
     ncycle += 1;
 }
    }




    cyclenl = (nltype *) calloc( ncycle + 1 , sizeof( nltype ) );
    if ( cyclenl == ((void*)0) )
 errx( 1 , "no room for %zu bytes of cycle headers" ,
     ( ncycle + 1 ) * sizeof( nltype ) );




    cycle = 0;
    for ( nlp = nl ; nlp < npe ; nlp++ ) {
 if ( !( nlp -> cyclehead == nlp && nlp -> cnext != 0 ) ) {
     continue;
 }
 cycle += 1;
 cyclenlp = &cyclenl[cycle];
        cyclenlp -> name = 0;
        cyclenlp -> value = 0;
        cyclenlp -> time = 0.0;
        cyclenlp -> childtime = 0.0;
 cyclenlp -> ncall = 0;
 cyclenlp -> selfcalls = 0;
 cyclenlp -> propfraction = 0.0;
 cyclenlp -> propself = 0.0;
 cyclenlp -> propchild = 0.0;
 cyclenlp -> printflag = TRUE;
 cyclenlp -> index = 0;
 cyclenlp -> toporder = DFN_NAN;
 cyclenlp -> cycleno = cycle;
 cyclenlp -> cyclehead = cyclenlp;
 cyclenlp -> cnext = nlp;
 cyclenlp -> parents = 0;
 cyclenlp -> children = 0;
 for ( memberp = nlp ; memberp ; memberp = memberp -> cnext ) {
     memberp -> cycleno = cycle;
     memberp -> cyclehead = cyclenlp;
 }




 for ( memberp = nlp ; memberp ; memberp = memberp -> cnext ) {
     for ( arcp=memberp->parents ; arcp ; arcp=arcp->arc_parentlist ) {
  if ( arcp -> arc_parentp == memberp ) {
      continue;
  }
  if ( arcp -> arc_parentp -> cycleno == cycle ) {
      cyclenlp -> selfcalls += arcp -> arc_count;
  } else {
      cyclenlp -> npropcall += arcp -> arc_count;
  }
     }
 }
    }
}
