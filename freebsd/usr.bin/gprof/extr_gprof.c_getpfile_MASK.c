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
struct rawarc {int /*<<< orphan*/  raw_count; int /*<<< orphan*/  raw_selfpc; int /*<<< orphan*/  raw_frompc; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int SAMPLEDEBUG ; 
 int debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct rawarc*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rawarc*) ; 

void
FUNC6(char *filename)
{
    FILE		*pfile;
    struct rawarc	arc;

    pfile = FUNC2(filename);
    FUNC4(pfile);
	/*
	 *	the rest of the file consists of
	 *	a bunch of <from,self,count> tuples.
	 */
    while ( FUNC1( &arc , sizeof arc , 1 , pfile ) == 1 ) {
#	ifdef DEBUG
	    if ( debug & SAMPLEDEBUG ) {
		printf( "[getpfile] frompc 0x%lx selfpc 0x%lx count %ld\n" ,
			arc.raw_frompc , arc.raw_selfpc , arc.raw_count );
	    }
#	endif /* DEBUG */
	    /*
	     *	add this arc
	     */
	FUNC5( &arc );
    }
    FUNC0(pfile);
}