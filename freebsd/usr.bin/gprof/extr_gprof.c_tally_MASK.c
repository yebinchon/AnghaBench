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
struct rawarc {int /*<<< orphan*/  raw_count; int /*<<< orphan*/  raw_selfpc; int /*<<< orphan*/  raw_frompc; } ;
struct TYPE_5__ {char* name; int /*<<< orphan*/  ncall; } ;
typedef  TYPE_1__ nltype ;

/* Variables and functions */
 int TALLYDEBUG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int debug ; 
 scalar_t__ kflag ; 
 int /*<<< orphan*/  kfromlist ; 
 int /*<<< orphan*/  ktolist ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct rawarc *rawp)
{
    nltype		*parentp;
    nltype		*childp;

    parentp = FUNC1( rawp -> raw_frompc );
    childp = FUNC1( rawp -> raw_selfpc );
    if ( parentp == 0 || childp == 0 )
	return;
    if ( kflag
	 && FUNC2( kfromlist , parentp -> name )
	 && FUNC2( ktolist , childp -> name ) ) {
	return;
    }
    childp -> ncall += rawp -> raw_count;
#   ifdef DEBUG
	if ( debug & TALLYDEBUG ) {
	    printf( "[tally] arc from %s to %s traversed %ld times\n" ,
		    parentp -> name , childp -> name , rawp -> raw_count );
	}
#   endif /* DEBUG */
    FUNC0( parentp , childp , rawp -> raw_count );
}