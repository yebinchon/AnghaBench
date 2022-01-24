#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {double childtime; double propfraction; double propself; double propchild; scalar_t__ toporder; long index; scalar_t__ cnext; struct TYPE_15__* cyclehead; scalar_t__ cycleno; int /*<<< orphan*/  printflag; int /*<<< orphan*/  ncall; int /*<<< orphan*/  npropcall; scalar_t__ selfcalls; } ;
typedef  TYPE_1__ nltype ;
struct TYPE_16__ {scalar_t__ arc_count; } ;
typedef  TYPE_2__ arctype ;

/* Variables and functions */
 int BREAKCYCLE ; 
 int /*<<< orphan*/  Cflag ; 
 int DFNDEBUG ; 
 scalar_t__ DFN_NAN ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_2__* FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (long,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* cyclenl ; 
 int cyclethreshold ; 
 int debug ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 long ncycle ; 
 TYPE_1__* nl ; 
 long nname ; 
 TYPE_1__* npe ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__**,long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  topcmp ; 
 TYPE_1__** topsortnlp ; 
 int /*<<< orphan*/  totalcmp ; 

nltype **
FUNC13(void)
{
    nltype	*parentp, **timesortnlp;
    arctype	*arcp;
    long	index;
    long	pass;

	/*
	 *	initialize various things:
	 *	    zero out child times.
	 *	    count self-recursive calls.
	 *	    indicate that nothing is on cycles.
	 */
    for ( parentp = nl ; parentp < npe ; parentp++ ) {
	parentp -> childtime = 0.0;
	arcp = FUNC0( parentp , parentp );
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
	    /*
	     *	topologically order things
	     *	if any node is unnumbered,
	     *	    number it and any of its descendents.
	     */
	for ( FUNC5() , parentp = nl ; parentp < npe ; parentp++ ) {
	    if ( parentp -> toporder == DFN_NAN ) {
		FUNC4( parentp );
	    }
	}
	    /*
	     *	link together nodes on the same cycle
	     */
	FUNC3();
	    /*
	     *	if no cycles to break up, proceed
	     */
	if ( ! Cflag )
	    break;
	    /*
	     *	analyze cycles to determine breakup
	     */
#	ifdef DEBUG
	    if ( debug & BREAKCYCLE ) {
		printf("[doarcs] pass %ld, cycle(s) %d\n" , pass , ncycle );
	    }
#	endif /* DEBUG */
	if ( pass == 1 ) {
	    FUNC10( "\n\n%s %s\n%s %d:\n" ,
		"The following arcs were deleted" ,
		"from the propagation calculation" ,
		"to reduce the maximum cycle size to", cyclethreshold );
	}
	if ( FUNC2() )
	    break;
	FUNC9 ( cyclenl );
	ncycle = 0;
	for ( parentp = nl ; parentp < npe ; parentp++ ) {
	    parentp -> toporder = DFN_NAN;
	    parentp -> cycleno = 0;
	    parentp -> cyclehead = parentp;
	    parentp -> cnext = 0;
	}
    }
    if ( pass > 1 ) {
	FUNC10( "\f\n" );
    } else {
	FUNC10( "\tNone\n\n" );
    }
	/*
	 *	Sort the symbol table in reverse topological order
	 */
    topsortnlp = (nltype **) FUNC1( nname , sizeof(nltype *) );
    if ( topsortnlp == (nltype **) 0 )
	FUNC8( 1 , "[doarcs] ran out of memory for topo sorting" );
    for ( index = 0 ; index < nname ; index += 1 ) {
	topsortnlp[ index ] = &nl[ index ];
    }
    FUNC12( topsortnlp , nname , sizeof(nltype *) , topcmp );
#   ifdef DEBUG
	if ( debug & DFNDEBUG ) {
	    printf( "[doarcs] topological sort listing\n" );
	    for ( index = 0 ; index < nname ; index += 1 ) {
		printf( "[doarcs] " );
		printf( "%d:" , topsortnlp[ index ] -> toporder );
		printname( topsortnlp[ index ] );
		printf( "\n" );
	    }
	}
#   endif /* DEBUG */
	/*
	 *	starting from the topological top,
	 *	propagate print flags to children.
	 *	also, calculate propagation fractions.
	 *	this happens before time propagation
	 *	since time propagation uses the fractions.
	 */
    FUNC6();
	/*
	 *	starting from the topological bottom,
	 *	propagate children times up to parents.
	 */
    FUNC7();
	/*
	 *	Now, sort by propself + propchild.
	 *	sorting both the regular function names
	 *	and cycle headers.
	 */
    timesortnlp = (nltype **) FUNC1( nname + ncycle , sizeof(nltype *) );
    if ( timesortnlp == (nltype **) 0 )
	FUNC8( 1 , "ran out of memory for sorting" );
    for ( index = 0 ; index < nname ; index++ ) {
	timesortnlp[index] = &nl[index];
    }
    for ( index = 1 ; index <= ncycle ; index++ ) {
	timesortnlp[nname+index-1] = &cyclenl[index];
    }
    FUNC12( timesortnlp , nname + ncycle , sizeof(nltype *) , totalcmp );
    for ( index = 0 ; index < nname + ncycle ; index++ ) {
	timesortnlp[ index ] -> index = index + 1;
    }
    return( timesortnlp );
}