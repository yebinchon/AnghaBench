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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

void
FUNC5(const char *blurbname)
{
    FILE	*blurbfile;
    int		input;

    blurbfile = FUNC1( blurbname , "r" );
    if ( blurbfile == NULL ) {
	FUNC4( "%s" , blurbname );
	return;
    }
    while ( ( input = FUNC2( blurbfile ) ) != EOF ) {
	FUNC3( input );
    }
    FUNC0( blurbfile );
}