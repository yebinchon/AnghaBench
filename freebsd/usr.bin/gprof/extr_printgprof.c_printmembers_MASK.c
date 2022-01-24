#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {double propself; double propchild; int /*<<< orphan*/  selfcalls; int /*<<< orphan*/  npropcall; struct TYPE_5__* cnext; } ;
typedef  TYPE_1__ nltype ;

/* Variables and functions */
 double hz ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3(nltype *cyclep)
{
    nltype	*memberp;

    FUNC2( cyclep );
    for ( memberp = cyclep -> cnext ; memberp ; memberp = memberp -> cnext ) {
	FUNC0( "%6.6s %5.5s %7.2f %11.2f %7ld" ,
		"" , "" , memberp -> propself / hz , memberp -> propchild / hz ,
		memberp -> npropcall );
	if ( memberp -> selfcalls != 0 ) {
	    FUNC0( "+%-7ld" , memberp -> selfcalls );
	} else {
	    FUNC0( " %7.7s" , "" );
	}
	FUNC0( "     " );
	FUNC1( memberp );
	FUNC0( "\n" );
    }
}