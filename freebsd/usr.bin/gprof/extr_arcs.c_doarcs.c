
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {double childtime; double propfraction; double propself; double propchild; scalar_t__ toporder; long index; scalar_t__ cnext; struct TYPE_15__* cyclehead; scalar_t__ cycleno; int printflag; int ncall; int npropcall; scalar_t__ selfcalls; } ;
typedef TYPE_1__ nltype ;
struct TYPE_16__ {scalar_t__ arc_count; } ;
typedef TYPE_2__ arctype ;


 int BREAKCYCLE ;
 int Cflag ;
 int DFNDEBUG ;
 scalar_t__ DFN_NAN ;
 int FALSE ;
 TYPE_2__* arclookup (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ calloc (long,int) ;
 scalar_t__ cycleanalyze () ;
 int cyclelink () ;
 TYPE_1__* cyclenl ;
 int cyclethreshold ;
 int debug ;
 int dfn (TYPE_1__*) ;
 int dfn_init () ;
 int doflags () ;
 int dotime () ;
 int errx (int,char*) ;
 int free (TYPE_1__*) ;
 long ncycle ;
 TYPE_1__* nl ;
 long nname ;
 TYPE_1__* npe ;
 int printf (char*,...) ;
 int printname (TYPE_1__*) ;
 int qsort (TYPE_1__**,long,int,int ) ;
 int topcmp ;
 TYPE_1__** topsortnlp ;
 int totalcmp ;

nltype **
doarcs(void)
{
    nltype *parentp, **timesortnlp;
    arctype *arcp;
    long index;
    long pass;







    for ( parentp = nl ; parentp < npe ; parentp++ ) {
 parentp -> childtime = 0.0;
 arcp = arclookup( parentp , parentp );
 if ( arcp != 0 ) {
     parentp -> ncall -= arcp -> arc_count;
     parentp -> selfcalls = arcp -> arc_count;
 } else {
     parentp -> selfcalls = 0;
 }
 parentp -> npropcall = parentp -> ncall;
 parentp -> propfraction = 0.0;
 parentp -> propself = 0.0;
 parentp -> propchild = 0.0;
 parentp -> printflag = FALSE;
 parentp -> toporder = DFN_NAN;
 parentp -> cycleno = 0;
 parentp -> cyclehead = parentp;
 parentp -> cnext = 0;
    }
    for ( pass = 1 ; ; pass++ ) {





 for ( dfn_init() , parentp = nl ; parentp < npe ; parentp++ ) {
     if ( parentp -> toporder == DFN_NAN ) {
  dfn( parentp );
     }
 }



 cyclelink();



 if ( ! Cflag )
     break;
 if ( pass == 1 ) {
     printf( "\n\n%s %s\n%s %d:\n" ,
  "The following arcs were deleted" ,
  "from the propagation calculation" ,
  "to reduce the maximum cycle size to", cyclethreshold );
 }
 if ( cycleanalyze() )
     break;
 free ( cyclenl );
 ncycle = 0;
 for ( parentp = nl ; parentp < npe ; parentp++ ) {
     parentp -> toporder = DFN_NAN;
     parentp -> cycleno = 0;
     parentp -> cyclehead = parentp;
     parentp -> cnext = 0;
 }
    }
    if ( pass > 1 ) {
 printf( "\f\n" );
    } else {
 printf( "\tNone\n\n" );
    }



    topsortnlp = (nltype **) calloc( nname , sizeof(nltype *) );
    if ( topsortnlp == (nltype **) 0 )
 errx( 1 , "[doarcs] ran out of memory for topo sorting" );
    for ( index = 0 ; index < nname ; index += 1 ) {
 topsortnlp[ index ] = &nl[ index ];
    }
    qsort( topsortnlp , nname , sizeof(nltype *) , topcmp );
    doflags();




    dotime();





    timesortnlp = (nltype **) calloc( nname + ncycle , sizeof(nltype *) );
    if ( timesortnlp == (nltype **) 0 )
 errx( 1 , "ran out of memory for sorting" );
    for ( index = 0 ; index < nname ; index++ ) {
 timesortnlp[index] = &nl[index];
    }
    for ( index = 1 ; index <= ncycle ; index++ ) {
 timesortnlp[nname+index-1] = &cyclenl[index];
    }
    qsort( timesortnlp , nname + ncycle , sizeof(nltype *) , totalcmp );
    for ( index = 0 ; index < nname + ncycle ; index++ ) {
 timesortnlp[ index ] -> index = index + 1;
    }
    return( timesortnlp );
}
