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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  flag ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 char* testName ; 
 char* trueName ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
 FUNC4(
     flag trueZ, uint8 trueFlags, flag testZ, uint8 testFlags )
{

    FUNC1( trueName, stdout );
    FUNC1( ": ", stdout );
    FUNC2( trueZ, stdout );
    FUNC0( ' ', stdout );
    FUNC3( trueFlags, stdout );
    FUNC1( "  ", stdout );
    FUNC1( testName, stdout );
    FUNC1( ": ", stdout );
    FUNC2( testZ, stdout );
    FUNC0( ' ', stdout );
    FUNC3( testFlags, stdout );
    FUNC0( '\n', stdout );

}