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

/* Variables and functions */
 double HISTORICAL_SCALE_2 ; 
 int /*<<< orphan*/  _PATH_CALLG_BLURB ; 
 scalar_t__ bflag ; 
 double hz ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 double printtime ; 
 double scale ; 

void
FUNC2(void)
{

    if ( bflag ) {
	FUNC0( _PATH_CALLG_BLURB );
    }
    FUNC1( "\ngranularity: each sample hit covers %g byte(s)" ,
	    scale * HISTORICAL_SCALE_2 );
    if ( printtime > 0.0 ) {
	FUNC1( " for %.2f%% of %.2f seconds\n\n" ,
		100.0/printtime , printtime / hz );
    } else {
	FUNC1( " no time propagated\n\n" );
	    /*
	     *	this doesn't hurt, since all the numerators will be 0.0
	     */
	printtime = 1.0;
    }
    FUNC1( "%6.6s %5.5s %7.7s %11.11s %7.7s/%-7.7s     %-8.8s\n" ,
	"" , "" , "" , "" , "called" , "total" , "parents");
    FUNC1( "%-6.6s %5.5s %7.7s %11.11s %7.7s+%-7.7s %-8.8s\t%5.5s\n" ,
	"index" , "%time" , "self" , "descendents" ,
	"called" , "self" , "name" , "index" );
    FUNC1( "%6.6s %5.5s %7.7s %11.11s %7.7s/%-7.7s     %-8.8s\n" ,
	"" , "" , "" , "" , "called" , "total" , "children");
    FUNC1( "\n" );
}