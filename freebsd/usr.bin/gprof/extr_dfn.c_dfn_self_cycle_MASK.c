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
 int DFNDEBUG ; 
 int debug ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(nltype *parentp)
{
	/*
	 *	since we are taking out self-cycles elsewhere
	 *	no need for the special case, here.
	 */
#   ifdef DEBUG
	if ( debug & DFNDEBUG ) {
	    printf( "[dfn_self_cycle] " );
	    printname( parentp );
	    printf( "\n" );
	}
#   endif /* DEBUG */
}