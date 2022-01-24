#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  toporder; } ;
typedef  TYPE_1__ nltype ;
struct TYPE_6__ {int cycletop; TYPE_1__* nlentryp; } ;

/* Variables and functions */
 int DFNDEBUG ; 
 int /*<<< orphan*/  DFN_BUSY ; 
 int DFN_DEPTH ; 
 int debug ; 
 int dfn_depth ; 
 TYPE_3__* dfn_stack ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3(nltype *parentp)
{

    dfn_depth += 1;
    if ( dfn_depth >= DFN_DEPTH )
	FUNC0( 1 , "[dfn] out of my depth (dfn_stack overflow)" );
    dfn_stack[ dfn_depth ].nlentryp = parentp;
    dfn_stack[ dfn_depth ].cycletop = dfn_depth;
    parentp -> toporder = DFN_BUSY;
#   ifdef DEBUG
	if ( debug & DFNDEBUG ) {
	    printf( "[dfn_pre_visit]\t\t%d:" , dfn_depth );
	    printname( parentp );
	    printf( "\n" );
	}
#   endif /* DEBUG */
}