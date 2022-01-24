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
typedef  int /*<<< orphan*/  float64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 

__attribute__((used)) static float64 FUNC5( void )
{

    switch ( FUNC4() & 7 ) {
     case 0:
     case 1:
     case 2:
        return FUNC2();
     case 3:
        return FUNC3();
     case 4:
     case 5:
     case 6:
        return FUNC0();
     default:
        return FUNC1();
    }

}