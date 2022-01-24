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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 char* functionName ; 
 char* roundingModeName ; 
 char* roundingPrecisionName ; 
 char* tininessModeName ; 

void FUNC1( FILE *stream )
{

    FUNC0( functionName, stream );
    if ( roundingModeName ) {
        if ( roundingPrecisionName ) {
            FUNC0( ", precision ", stream );
            FUNC0( roundingPrecisionName, stream );
        }
        FUNC0( ", rounding ", stream );
        FUNC0( roundingModeName, stream );
        if ( tininessModeName ) {
            FUNC0( ", tininess ", stream );
            FUNC0( tininessModeName, stream );
            FUNC0( " rounding", stream );
        }
    }

}