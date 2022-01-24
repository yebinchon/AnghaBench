#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* bus_entry_ptr ;
struct TYPE_3__ {int bus_id; char* bus_type; } ;

/* Variables and functions */
 int /*<<< orphan*/ * busses ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  nbus ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3( bus_entry_ptr entry )
{
    int		x;
    char	name[ 8 ];
    char	c;

    /* count it */
    ++nbus;

    FUNC2( "\t\t%2d", entry->bus_id );
    FUNC2( "\t " ); FUNC1( entry->bus_type, 6 ); FUNC2( "\n" );

    for ( x = 0; x < 6; ++x ) {
	if ( (c = entry->bus_type[ x ]) == ' ' )
	    break;
	name[ x ] = c;
    }
    name[ x ] = '\0';
    busses[ entry->bus_id ] = FUNC0( name );
}