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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 size_t float64NumQOut ; 
 int* float64QOut ; 
 int FUNC1 () ; 
 size_t FUNC2 () ; 

__attribute__((used)) static float64 FUNC3( void )
{
    float64 z;

    FUNC0(
        z,
          float64QOut[ FUNC2() % float64NumQOut ]
        | ( FUNC1() & 0x000FFFFF ),
        FUNC1()
    );
    return z;

}