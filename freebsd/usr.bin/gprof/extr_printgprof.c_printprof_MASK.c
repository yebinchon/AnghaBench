#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  nltype ;

/* Variables and functions */
 double actime ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * nl ; 
 int nname ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timecmp ; 

void
FUNC7(void)
{
    register nltype	*np;
    nltype		**sortednlp;
    int			idx;

    actime = 0.0;
    FUNC5( "\f\n" );
    FUNC2();
	/*
	 *	Sort the symbol table in by time
	 */
    sortednlp = (nltype **) FUNC0( nname , sizeof(nltype *) );
    if ( sortednlp == (nltype **) 0 )
	FUNC1( 1 , "[printprof] ran out of memory for time sorting" );
    for ( idx = 0 ; idx < nname ; idx += 1 ) {
	sortednlp[ idx ] = &nl[ idx ];
    }
    FUNC6( sortednlp , nname , sizeof(nltype *) , timecmp );
    for ( idx = 0 ; idx < nname ; idx += 1 ) {
	np = sortednlp[ idx ];
	FUNC3( np );
    }
    actime = 0.0;
    FUNC4( sortednlp );
}