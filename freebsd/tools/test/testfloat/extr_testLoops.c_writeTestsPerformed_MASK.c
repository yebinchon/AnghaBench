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
typedef  int int16 ;

/* Variables and functions */
 int errorCount ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int tenthousandsCount ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4( int16 count )
{

    if ( tenthousandsCount ) {
        FUNC1(
            stderr, "\r%d%04d tests performed", tenthousandsCount, count );
    }
    else {
        FUNC1( stderr, "\r%d tests performed", count );
    }
    if ( errorCount ) {
        FUNC1(
            stderr,
            "; %d error%s found.\n",
            errorCount,
            ( errorCount == 1 ) ? "" : "s"
        );
    }
    else {
        FUNC2( ".\n", stderr );
        FUNC2( "No errors found in ", stdout );
        FUNC3( stdout );
        FUNC2( ".\n", stdout );
        FUNC0( stdout );
    }

}