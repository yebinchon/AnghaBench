
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int size; struct TYPE_8__* next; TYPE_2__** list; } ;
typedef TYPE_1__ cltype ;
struct TYPE_9__ {int arc_flags; struct TYPE_9__* arc_next; int arc_cyclecnt; } ;
typedef TYPE_2__ arctype ;


 scalar_t__ CYCLEMAX ;
 int FALSE ;
 int ONLIST ;
 int SUBCYCLELIST ;
 int TRUE ;
 TYPE_2__* archead ;
 scalar_t__ calloc (int,int) ;
 scalar_t__ cyclecnt ;
 TYPE_1__* cyclehead ;
 int debug ;
 int newcycle ;
 int oldcycle ;
 int printsubcycle (TYPE_1__*) ;
 int warnx (char*,int) ;

bool
addcycle(arctype **stkstart, arctype **stkend)
{
    arctype **arcpp;
    arctype **stkloc;
    arctype **stkp;
    arctype **endlist;
    arctype *minarc;
    arctype *arcp;
    cltype *clp;
    int size;

    size = stkend - stkstart + 1;
    if ( size <= 1 )
 return( TRUE );
    for ( arcpp = stkstart , minarc = *arcpp ; arcpp <= stkend ; arcpp++ ) {
 if ( *arcpp > minarc )
     continue;
 minarc = *arcpp;
 stkloc = arcpp;
    }
    for ( clp = cyclehead ; clp ; clp = clp -> next ) {
 if ( clp -> size != size )
     continue;
 stkp = stkloc;
 endlist = &clp -> list[ size ];
 for ( arcpp = clp -> list ; arcpp < endlist ; arcpp++ ) {
     if ( *stkp++ != *arcpp )
  break;
     if ( stkp > stkend )
  stkp = stkstart;
 }
 if ( arcpp == endlist ) {



     return( TRUE );
 }
    }
    clp = (cltype *)
 calloc( 1 , sizeof ( cltype ) + ( size - 1 ) * sizeof( arctype * ) );
    if ( clp == ((void*)0) ) {
 warnx( "no room for %zu bytes of subcycle storage" ,
     sizeof ( cltype ) + ( size - 1 ) * sizeof( arctype * ) );
 return( FALSE );
    }
    stkp = stkloc;
    endlist = &clp -> list[ size ];
    for ( arcpp = clp -> list ; arcpp < endlist ; arcpp++ ) {
 arcp = *arcpp = *stkp++;
 if ( stkp > stkend )
     stkp = stkstart;
 arcp -> arc_cyclecnt++;
 if ( ( arcp -> arc_flags & ONLIST ) == 0 ) {
     arcp -> arc_flags |= ONLIST;
     arcp -> arc_next = archead;
     archead = arcp;
 }
    }
    clp -> size = size;
    clp -> next = cyclehead;
    cyclehead = clp;






    cyclecnt++;
    if ( cyclecnt >= CYCLEMAX )
 return( FALSE );
    return( TRUE );
}
